/*
 * Copyright (c) 2016, University of Cambridge
 * All rights reserved.
 *
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */

/**
 * \file
 *         udp-relay.c
 * \author
 *         David Rodenas-Herraiz <dr424@cam.ac.uk>
 *
 * \brief
 *         Code running on forwarder nodes
 */

#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "net/ip/uip.h"
#include "net/ipv6/uip-ds6.h"
#include "net/ip/uip-udp-packet.h"
#include "sys/ctimer.h"
#ifdef WITH_COMPOWER
#include "powertrace.h"
#endif
#include <stdio.h>
#include <string.h>

/* Only for TMOTE Sky? */
#include "dev/serial-line.h"
#include "dev/uart1.h"
#include "net/ipv6/uip-ds6-route.h"

#define UDP_CLIENT_PORT 8765
#ifdef UDP_SERVER_PORT_CONF
#define UDP_SERVER_PORT UDP_SERVER_PORT_CONF
#else
#define UDP_SERVER_PORT 5500
#endif

#define UDP_EXAMPLE_ID  190

#define DEBUG DEBUG_FULL
#include "net/ip/uip-debug.h"

#define TIMER_INTERVAL (60 * CLOCK_SECOND)
#if CONF_SEND_INTERVAL
#define SEND_INTERVAL CONF_SEND_INTERVAL
#else
#define SEND_INTERVAL 15
#endif /* CONF_SEND_INTERVAL */
#define BACKOFF (5 * CLOCK_SECOND)

#define MAX_PAYLOAD_LEN		50

static struct uip_udp_conn *client_conn;
static uip_ipaddr_t server_ipaddr;

static uint8_t interval;

/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);
/*---------------------------------------------------------------------------*/
static int seq_id;

static void
send_data_packet(void *ptr)
{
  char buf[MAX_PAYLOAD_LEN];

  seq_id++;
  PRINTF("#D to %d seq %d\n",
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  sprintf(buf, "#D to %d seq %d", server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  uip_udp_packet_sendto(client_conn, buf, strlen(buf),
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
#/*---------------------------------------------------------------------------*/
static void
send_topology_stats(void *ptr)
{
  char buf[MAX_PAYLOAD_LEN];

  seq_id++;
  PRINTF("#T to %d seq %d\n",
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  sprintf(buf, "#T to %d seq %d", server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  uip_udp_packet_sendto(client_conn, buf, strlen(buf),
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
#if WITH_LINK_STATS
static void
send_link_stats(void *ptr)
{
  char buf[MAX_PAYLOAD_LEN];

  seq_id++;
  PRINTF("#L to %d seq %d\n",
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  sprintf(buf, "#L to %d seq %d", server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  uip_udp_packet_sendto(client_conn, buf, strlen(buf),
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
#endif /* WITH_LINK_STATS */
/*---------------------------------------------------------------------------*/
static void
send_packet_stats(void *ptr)
{
  char buf[MAX_PAYLOAD_LEN];

  seq_id++;
  PRINTF("#M to %d seq %d\n",
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  sprintf(buf, "#M to %d seq %d", server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  uip_udp_packet_sendto(client_conn, buf, strlen(buf),
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  char *str;

  if(uip_newdata()) {
    str = uip_appdata;
    str[uip_datalen()] = '\0';
  }
}
/*---------------------------------------------------------------------------*/
static void
print_local_addresses(void)
{
  int i;
  uint8_t state;

  PRINTF("Client IPv6 addresses: ");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused &&
       (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
      PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
      PRINTF("\n");
      /* hack to make address "final" */
      if (state == ADDR_TENTATIVE) {
	uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
      }
    }
  }
}
/*---------------------------------------------------------------------------*/
static void
set_global_address(void)
{
  uip_ipaddr_t ipaddr;

  uip_ip6addr(&ipaddr, UIP_DS6_DEFAULT_PREFIX, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

/* The choice of server address determines its 6LoPAN header compression.
 * (Our address will be compressed Mode 3 since it is derived from our link-local address)
 * Obviously the choice made here must also be selected in udp-server.c.
 *
 * For correct Wireshark decoding using a sniffer, add the /64 prefix to the 6LowPAN protocol preferences,
 * e.g. set Context 0 to fd00::.  At present Wireshark copies Context/128 and then overwrites it.
 * (Setting Context 0 to fd00::1111:2222:3333:4444 will report a 16 bit compressed address of fd00::1111:22ff:fe33:xxxx)
 *
 * Note the IPCMV6 checksum verification depends on the correct uncompressed addresses.
 */

#if 1
/* Mode 1 - 64 bits inline */
   uip_ip6addr(&server_ipaddr, UIP_DS6_DEFAULT_PREFIX, 0, 0, 0, 0, 0, 0, 1);
#elif 1
/* Mode 2 - 16 bits inline */
  uip_ip6addr(&server_ipaddr, UIP_DS6_DEFAULT_PREFIX, 0, 0, 0, 0, 0x00ff, 0xfe00, 1);
#else
/* Mode 3 - derived from server link-local (MAC) address */
  uip_ip6addr(&server_ipaddr, UIP_DS6_DEFAULT_PREFIX, 0, 0, 0, 0x0250, 0xc2ff, 0xfea8, 0xcd1a); //redbee-econotag
#endif
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
  static struct etimer periodic;
  static struct ctimer backoff_timer;

  static uint8_t sensingCounter, topologyCounter, trafficCounter;
#if WITH_LINK_STATS
  static uint8_t linkCounter;
#endif /* WITH_LINK_STATS */

  PROCESS_BEGIN();

  PROCESS_PAUSE();

  set_global_address();

  PRINTF("UDP client process started nbr:%d routes:%d\n",
         NBR_TABLE_CONF_MAX_NEIGHBORS, UIP_CONF_MAX_ROUTES);

  print_local_addresses();

  /* new connection with remote host */
  client_conn = udp_new(NULL, UIP_HTONS(UDP_SERVER_PORT), NULL);
  if(client_conn == NULL) {
    PRINTF("No UDP connection available, exiting the process!\n");
    PROCESS_EXIT();
  }
  udp_bind(client_conn, UIP_HTONS(UDP_CLIENT_PORT));

  PRINTF("Created a connection with the server ");
  PRINT6ADDR(&client_conn->ripaddr);
  PRINTF(" local/remote port %u/%u\n",
	UIP_HTONS(client_conn->lport), UIP_HTONS(client_conn->rport));

  // initialize variables
  interval = SEND_INTERVAL;

  sensingCounter = 0;
  topologyCounter = 1;
#if WITH_LINK_STATS
  linkCounter = 2;
#endif /* WITH_LINK_STATS */
  trafficCounter = 3;

  etimer_set(&periodic, TIMER_INTERVAL);
  while(1) {
    PROCESS_YIELD();
    if(ev == tcpip_event) {
      tcpip_handler();
    }

    if(etimer_expired(&periodic)) {
      etimer_reset(&periodic);

      sensingCounter++;
      topologyCounter++;
#if WITH_LINK_STATS
      linkCounter++;
#endif /* WITH_LINK_STATS */
      trafficCounter++;

      if(sensingCounter >= interval) {
        sensingCounter = 0;
        ctimer_set(&backoff_timer, random_rand() % BACKOFF, send_data_packet, NULL);
      }

      if(topologyCounter>=interval) {
        topologyCounter = 0;
        ctimer_set(&backoff_timer, random_rand() % BACKOFF, send_topology_stats, NULL);
      }
#if WITH_LINK_STATS
      if(linkCounter>=interval) {
        linkCounter = 0;
        ctimer_set(&backoff_timer, random_rand() % BACKOFF, send_link_stats, NULL);
      }
#endif /* WITH_LINK_STATS */
      if(trafficCounter>=interval) {
        trafficCounter = 0;
        ctimer_set(&backoff_timer, random_rand() % BACKOFF, send_packet_stats, NULL);
      }
    }
  }

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
