/*
 * Copyright (c) 2011, Swedish Institute of Computer Science.
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
 *
 */

#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "sys/etimer.h"
#include "net/ip/uip.h"
#include "net/ipv6/uip-ds6.h"
#include "net/ip/uip-debug.h"

#include "simple-udp.h"
#include "servreg-hack.h"
#include "project-conf.h"

#include "net/rpl/rpl.h"
#include "sys/node-id.h"
#include "lib/aes-128.h"

#include <stdio.h>
#include <string.h>

#define UDP_PORT 1234
#define SERVICE_ID 190

#define SEND_INTERVAL		(10 * CLOCK_SECOND)
#define SEND_TIME		(random_rand() % (SEND_INTERVAL))

/*===================================== CODE FOR AES GOES HERE ==================================================*/

/* This is the example taken from the  AES FIP 197  document. 
 * Togheter to the default data should reflect the example from the appendix C.1
 * If the variable  DEBUG_AES128 is defined then will display all the events. 
 */
  uint8_t Llave[] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };
         
/*  uint8_t Llave[] = { 0x2b, 0x7e, 0x15, 0x16, 
      0x28, 0xae, 0xd2, 0xa6, 
      0xab, 0xf7, 0x15, 0x88, 
      0x09, 0xcf, 0x4f, 0x3c};*/
      
/*  uint8_t Llave[] = { 0x00, 0x11, 0x22, 0x33, 
      0x44, 0x55, 0x66, 0x77, 
      0x88, 0x99, 0xaa, 0xbb, 
      0xcc, 0xdd, 0xee, 0xff};*/


/* WARNING: The AES-128 software implementation try to emulate the hardware. 
 * Yet, there is a limitation, if the data lenght is not multiple of 16 bytes
 * the last block of data will be wrongly decrypted. 
 * This could be fixed using arrays of dinamic size, however  the complexity
 * for micronctroller (Resources) could not be adequate. Therefore, for this 
 * example the padding is left outside. 
 * 
 */
/*uint8_t Datos[]    = "Testing a long chain that should be crypted!\n"; 
  uint8_t ToCipher[] = "Testing a long chain that should be crypted!\n";*/

/* This is the example taken from the  AES FIP 197  document. 
 * Togheter to the default key should reflect the example from the appendix C.1
 * If the variable  DEBUG_AES128 is defined then will display all the events. 
 */
/*
  uint8_t Datos[] = { 0x00, 0x11, 0x22, 0x33, 
      0x44, 0x55, 0x66, 0x77, 
      0x88, 0x99, 0xaa, 0xbb, 
      0xcc, 0xdd, 0xee, 0xff};
  uint8_t ToCipher[] = {  0x00, 0x11, 0x22, 0x33, 
      0x44, 0x55, 0x66, 0x77, 
      0x88, 0x99, 0xaa, 0xbb, 
      0xcc, 0xdd, 0xee, 0xff};
*/

/*---------------------------------------------------------------------------*/
static void
Display_Raw_Data(uint8_t *Raw, int Length, char * Flag ){         // Displays data in hexadecimal format
   
   uint8_t iC; 
   
   printf(" Raw bytes of  %s (size %d) : \t\t\t [ ",  Flag, Length);
   
   for(iC=0; iC < Length; iC++){
      printf("%02X", Raw[iC]);  
  }
  printf(" ]\n");
 return; 

}

static struct simple_udp_connection unicast_connection;

/*---------------------------------------------------------------------------*/
PROCESS(unicast_receiver_process, "Unicast receiver example process");
AUTOSTART_PROCESSES(&unicast_receiver_process);
/*---------------------------------------------------------------------------*/

static void
receiver(struct simple_udp_connection *c,
         const uip_ipaddr_t *sender_addr,
         uint16_t sender_port,
         const uip_ipaddr_t *receiver_addr,
         uint16_t receiver_port,
         const uint8_t *data,
         uint16_t datalen)
{
  printf("GET: Data received on port %d from port %d with length %d\n",
         receiver_port, sender_port, datalen);
  uip_ipaddr_t *addr;
  //Display_Raw_Data(ToCipher, sizeof(ToCipher), "SEND: Crypted data" );
  AES_128.data_decrypt(data, datalen);
  printf("GET: (Decrypted) ASCII Value %s \n", (char *)data );
  addr = servreg_hack_lookup(SERVICE_ID);
}
/*---------------------------------------------------------------------------*/

static uip_ipaddr_t *
set_global_address(void)
{
  static uip_ipaddr_t ipaddr;
  int i;
  uint8_t state;

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

  printf("IPv6 addresses: ");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused &&
       (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
      uip_debug_ipaddr_print(&uip_ds6_if.addr_list[i].ipaddr);
      printf("\n");
    }
  }

  return &ipaddr;
}
/*---------------------------------------------------------------------------*/

static void
create_rpl_dag(uip_ipaddr_t *ipaddr)      // creating now the rpl dag structure.
{

  struct uip_ds6_addr *root_if;           // stores the root of the dag

  root_if = uip_ds6_addr_lookup(ipaddr); // if it is added in the list of addresses.
  if(root_if != NULL) {
    rpl_dag_t *dag;            // creating the dag structure 
    uip_ipaddr_t prefix;
    
    rpl_set_root(RPL_DEFAULT_INSTANCE, ipaddr); //sets the root to a particular ip address
    dag = rpl_get_any_dag();
    uip_ip6addr(&prefix, 0xaaaa, 0, 0, 0, 0, 0, 0, 0); //sets the prefix of the ip address 
    rpl_set_prefix(dag, &prefix, 64); // length of the prefix is 64 bits .
    PRINTF("created a new RPL dag\n");
  } else {
    PRINTF("failed to create a new RPL DAG\n");
  }

}

/*---------------------------------------------------------------------------*/
PROCESS_THREAD(unicast_receiver_process, ev, data)
{
  uip_ipaddr_t *ipaddr;
  AES_128.set_key(Llave);

  PROCESS_BEGIN();

  servreg_hack_init();

  ipaddr = set_global_address();

  create_rpl_dag(ipaddr);

  servreg_hack_register(SERVICE_ID, ipaddr); // registered to the service of listening

  simple_udp_register(&unicast_connection, UDP_PORT,
                      NULL, UDP_PORT, receiver);

  while(1) {
    PROCESS_WAIT_EVENT();
  }
  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
