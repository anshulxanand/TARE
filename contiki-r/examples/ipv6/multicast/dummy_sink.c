/*
 * Copyright (c) 2010, Loughborough University - Computer Science
 * All rights reserved.
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
 */

/**
 * \file
 *         This node is part of the RPL multicast example. It is a node that
 *         joins a multicast group and listens for messages. It also knows how
 *         to forward messages down the tree.
 *         For the example to work, we need one or more of those nodes.
 *
 * \author
 *         George Oikonomou - <oikonomou@users.sourceforge.net>
 */

#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"
#include "net/ipv6/multicast/uip-mcast6.h"

#include <string.h>
#include "powertrace.h"
#define DEBUG DEBUG_PRINT
#include "net/ip/uip-debug.h"
#include "project-conf.h"

static uint16_t count;

#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])

#if !NETSTACK_CONF_WITH_IPV6 || !UIP_CONF_ROUTER || !UIP_CONF_IPV6_MULTICAST || !UIP_CONF_IPV6_RPL
#error "This example can not work with the current contiki configuration"
#error "Check the values of: NETSTACK_CONF_WITH_IPV6, UIP_CONF_ROUTER, UIP_CONF_IPV6_RPL"
#endif
/*---------------------------------------------------------------------------*/
PROCESS(mcast_sink_process, "Multicast Sink");
AUTOSTART_PROCESSES(&mcast_sink_process);
/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  if(uip_newdata()) {
    count++;
    PRINTF("In: [0x%08lx], TTL %u, total %u\n",
        uip_ntohl((unsigned long) *((uint32_t *)(uip_appdata))),
        UIP_IP_BUF->ttl, count);
  }
  return;
}

PROCESS_THREAD(mcast_sink_process, ev, data)
{
  PROCESS_BEGIN();

  while(1) {
    PROCESS_YIELD();
    if(ev == tcpip_event) {
      tcpip_handler();
    }
   printf("Got event number %d\n", ev);

  }

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
