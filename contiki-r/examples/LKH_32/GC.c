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
 *         This node is part of the RPL multicast example. It is an RPL root
 *         and sends a multicast message periodically. For the example to work,
 *         we need one of those nodes.
 *
 * \author
 *         George Oikonomou - <oikonomou@users.sourceforge.net>
 */

#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"
#include "net/ipv6/multicast/uip-mcast6.h"
#include "lib/aes-128.h"
#include "project-conf.h" 
#include <string.h>
#define DEBUG DEBUG_PRINT
#include "net/ip/uip-debug.h"
#include "net/rpl/rpl.h"
#define MCAST_SINK_UDP_PORT 3001 /* Host byte order */
#define SEND_INTERVAL CLOCK_SECOND /* clock ticks */ // for not 7 it was 2.6
#define ITERATIONS 1 /* messages */

/* Start sending messages START_DELAY secs after we start so that routing can
 * converge */
#define START_DELAY 50

static struct uip_udp_conn * mcast_conn;
static uint32_t seq_id = 0 ;

#if !NETSTACK_CONF_WITH_IPV6 || !UIP_CONF_ROUTER || !UIP_CONF_IPV6_MULTICAST || !UIP_CONF_IPV6_RPL
#error "This example can not work with the current contiki configuration"
#error "Check the values of: NETSTACK_CONF_WITH_IPV6, UIP_CONF_ROUTER, UIP_CONF_IPV6_RPL"
#endif
/* This is the example taken from the  AES FIP 197  document. 
 * Togheter to the default data should reflect the example from the appendix C.1
 * If the variable  DEBUG_AES128 is defined then will display all the events. 
 */

  /*More keys can be added but we will add only those which will be required here for transmission */
  
   uint8_t GK[16] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };
         
  uint8_t K17_32[16] = {0x02, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };


  uint8_t K17_24[16] = {0x03, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };


  uint8_t K17_20[16] = {0x05, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };
   
  uint8_t K17_18[16] = {0x08, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };

   uint8_t K18[16] = {0x09, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };  

   uint8_t K19_20[16] = {0x07, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };    

  uint8_t K21_24[16] = {0x06, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };

  uint8_t K25_32[16] = {0x04, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };

   
  uint8_t K1_16[16] = {0x01, 0x01, 0x02, 0x03, 0x04, 0x05,                // our cryptographic key which derives the round keys.
         0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 
         0x0C, 0x0D, 0x0E, 0x0F };
                

/* WARNING: The AES-128 software implementation try to emulate the hardware. 
 * Yet, there is a limitation, if the data lenght is not multiple of 16 bytes
 * the last block of data will be wrongly decrypted. 
 * This could be fixed using arrays of dinamic size, however  the complexity
 * for micronctroller (Resources) could not be adequate. Therefore, for this 
 * example the padding is left outside. 
 * 
 */
/*uint8_t data[]    = "Testing a long chain that should be crypted!\n"; 
  uint8_t ToCipher[] = "Testing a long chain that should be crypted!\n";*/

/* This is the example taken from the  AES FIP 197  document. 
 * Togheter to the default key should reflect the example from the appendix C.1
 * If the variable  DEBUG_AES128 is defined then will display all the events. 
 */
/*
  uint8_t data[] = { 0x00, 0x11, 0x22, 0x33, 
      0x44, 0x55, 0x66, 0x77, 
      0x88, 0x99, 0xaa, 0xbb, 
      0xcc, 0xdd, 0xee, 0xff};
  uint8_t ToCipher[] = {  0x00, 0x11, 0x22, 0x33, 
      0x44, 0x55, 0x66, 0x77, 
      0x88, 0x99, 0xaa, 0xbb, 
      0xcc, 0xdd, 0xee, 0xff};
*/
static void 
print_data(uint8_t data[] , int len){

  int i ; 
  for(i=0;i<len;i++){
    printf("%x " , data[i]);

  }
  printf("\n");

  return ;

}
 
uint8_t ToCipher[16]; //the storage for encrypted keys which are copied into the data payload

/*--------------------------------New keys to be transmitted--------------*/
  uint8_t _GK[16] =  {0x2b, 0x7e, 0x15, 0x16, 
      0x28, 0xae, 0xd2, 0xa6, 
      0xab, 0xf7, 0x15, 0x88, 
      0x09, 0xcf, 0x4f, 0x3c} ;


  uint8_t _K17_32[16] =  {0x2c, 0x7e, 0x15, 0x16, 
      0x28, 0xae, 0xd2, 0xa6, 
      0xab, 0xf7, 0x15, 0x88, 
      0x09, 0xcf, 0x4f, 0x3c} ;


  uint8_t _K17_24[16] =  {0x2d, 0x7e, 0x15, 0x16, 
      0x28, 0xae, 0xd2, 0xa6, 
      0xab, 0xf7, 0x15, 0x88, 
      0x09, 0xcf, 0x4f, 0x3c} ;


  uint8_t _K17_20[16] =  {0x2e, 0x7e, 0x15, 0x16, 
      0x28, 0xae, 0xd2, 0xa6, 
      0xab, 0xf7, 0x15, 0x88, 
      0x09, 0xcf, 0x4f, 0x3c} ;


  uint8_t _K17_18[16] =  {0x2f, 0x7e, 0x15, 0x16, 
      0x28, 0xae, 0xd2, 0xa6, 
      0xab, 0xf7, 0x15, 0x88, 
      0x09, 0xcf, 0x4f, 0x3c} ;


/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
PROCESS(rpl_root_process, "RPL ROOT, Multicast Sender");
AUTOSTART_PROCESSES(&rpl_root_process);
/*---------------------------------------------------------------------------*/
static void
multicast_level1(void)
{
   //host to network byte order long
  uint8_t data[18] = {0x00 ,0x00,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 };
  
 
  AES_128.set_key(K1_16);
  memcpy(ToCipher,_GK, sizeof(_GK)); 

  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
 
  memcpy(&data[2] , ToCipher , sizeof(ToCipher)); 
  seq_id++;
  uip_udp_packet_send(mcast_conn, data , sizeof(data));
  
}

static void
multicast_level2(void){
  
  uint8_t data[34] = {0x01 ,0x01,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 };

/*----------------------*/
  AES_128.set_key(K25_32);
  memcpy(ToCipher,_GK, sizeof(_GK));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[2] , ToCipher , sizeof(ToCipher));
/*----------------------------*/

  memcpy(ToCipher,_K17_32, sizeof(_K17_32));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[18] , ToCipher , sizeof(ToCipher));
  seq_id++; 
  uip_udp_packet_send(mcast_conn, data , sizeof(data));

}

static void
multicast_level3(void){

  
  uint8_t data[50] = {0x02 ,0x03,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00};


  AES_128.set_key(K21_24);
  memcpy(ToCipher,_GK, sizeof(_GK));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[2] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_32, sizeof(_K17_32));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[18] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_24, sizeof(_K17_24));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[34] , ToCipher , sizeof(ToCipher));
  seq_id++; 
  uip_udp_packet_send(mcast_conn, data , sizeof(data));

}

static void
multicast_level4(void){

  uint8_t data[66] = {0x03 ,0x05,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00};


  AES_128.set_key(K19_20);
 
  memcpy(ToCipher,_GK, sizeof(_GK));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[2] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_32, sizeof(_K17_32));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[18] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_24, sizeof(_K17_24));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[34] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_20, sizeof(_K17_20));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[50] , ToCipher , sizeof(ToCipher));
  seq_id++; 
  uip_udp_packet_send(mcast_conn, data , sizeof(data));

}

static void
multicast_level5(void){

  
  uint8_t data[82] = {0x04 ,0x09,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,

      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00 ,
      0x00 ,0x00 ,0x00 ,0x00};
      

  AES_128.set_key(K18);

  memcpy(ToCipher,_GK, sizeof(_GK));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[2] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_32, sizeof(_K17_32));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[18] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_24, sizeof(_K17_24));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[34] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_20, sizeof(_K17_20));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[50] , ToCipher , sizeof(ToCipher));

  memcpy(ToCipher,_K17_18, sizeof(_K17_18));
  AES_128.data_encrypt(ToCipher, sizeof(ToCipher));
  memcpy(&data[66] , ToCipher , sizeof(ToCipher));
  seq_id++; 
  uip_udp_packet_send(mcast_conn, data , sizeof(data));


}

/*---------------------------------------------------------------------------*/
static void
prepare_mcast(void)
{
  uip_ipaddr_t ipaddr;

  /*
   * IPHC will use stateless multicast compression for this destination
   * (M=1, DAC=0), with 32 inline bits (1E 89 AB CD)
   */
  uip_ip6addr(&ipaddr, 0xFF1E,0,0,0,0,0,0x89,0xABCD);
  mcast_conn = udp_new(&ipaddr, UIP_HTONS(MCAST_SINK_UDP_PORT), NULL); //address  of the remote host , that is the sinks  ? 

}
/*---------------------------------------------------------------------------*/
static void
set_own_addresses(void) //sets root as root of DAG 
{
  int i;
  uint8_t state;
  rpl_dag_t *dag;
  uip_ipaddr_t ipaddr;

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

  PRINTF("Our IPv6 addresses:\n");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused && (state == ADDR_TENTATIVE || state
        == ADDR_PREFERRED)) {
      PRINTF("  ");
      PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
      PRINTF("\n");
      if(state == ADDR_TENTATIVE) {
        uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
      }
    }
  }

  /* Become root of a new DODAG with ID our global v6 address */
  dag = rpl_set_root(RPL_DEFAULT_INSTANCE, &ipaddr);
  if(dag != NULL) {
    rpl_set_prefix(dag, &ipaddr, 64);
    PRINTF("Created a new RPL dag with ID: ");
    PRINT6ADDR(&dag->dag_id);
    PRINTF("\n");
  }
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(rpl_root_process, ev, data)
{
  static struct etimer et;

  PROCESS_BEGIN();
       // Input string 
  PRINTF("Multicast Engine: '%s'\n", UIP_MCAST6.name);
  NETSTACK_MAC.off(1); // the radio of the nodes is always ON 

  set_own_addresses();

  prepare_mcast();
  memcpy(GK ,_GK , sizeof(GK));
  memcpy(K17_32 , _K17_32 , sizeof(K17_32));
  memcpy(K17_24 ,_K17_24 , sizeof(K17_24));
  memcpy(K17_20 ,_K17_20 , sizeof(K17_20));
  memcpy(K17_18 ,_K17_18 , sizeof(K17_18));
  printf("Ticks per second: %u\n", RTIMER_ARCH_SECOND);
  etimer_set(&et, START_DELAY * CLOCK_SECOND);
   while(1) {
    PROCESS_YIELD();
    if(etimer_expired(&et)) {
      if(seq_id == 1) {
        etimer_stop(&et);
      } 
      else if(seq_id==0){
        multicast_level5(); 
      }
      /*else if(seq_id==2){
        multicast_level2(); 
      }
      else if(seq_id==3){
        multicast_level3(); 
      }
      else if(seq_id==4){
        multicast_level4(); 
      }
      else if(seq_id==5){
        multicast_level5(); 
      }
        seq_id++; 
        etimer_set(&et, SEND_INTERVAL);
      }*/
    }
   }
  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
