This is the readme for proof of concept implementation for REAR (Routing and Energy Adaptive Re-keying Scheme for Secure Group Communication in IoT networks)

The code presented in this project maybe ported for implementations which require changing multicast engines , dropping selected few packets , changing the objective function , or for energy  measurement . The ways for each of the requirements have been discussed. 

Section I : General Instructions and Notes -------->

1. Copy the contiki-rear folder in your home directory of contiki-OS.
2. The paths for core , net , ip6 etc.are arranged exactly Contiki 3.x
3. While modifying the make file , please use Sublime or vim. Other editors might give trouble with whitespace.
4. All implementations can be found in the directory /home/user/contiki-rear/examples/LKH_32 (or OKD_32 or REAR_32 or TKH_32 or TKH_OKD_32 )
5.For all the implementations , SMRF Multicast engine has been used , to modify this choice (highly not recommended to use ROLL engine , ESMRF or BMRF based engines maybe used) . By default ROLL engine is used , this should be modified for use cases where root is the only multicast sender i.e a P2MP scenario with root as sender. (In rekeying schemes only Group Controller is authorized to send the messages.)

For changing the multicast engine in project-conf.h file of the project change the engine , for example 

#define UIP_MCAST6_CONF_ENGINE UIP_MCAST6_ENGINE_SMRF sets the engine to multicast other engines can be set similarly by the corresponding macros.

6. The rpl objective has been modified in the rpl_of0 file itself which is found in /home/user/contiki-rear/core/net/rpl folder .
This has been done to ease the step for experimental evaluation , hence forcing the node to choose the nearest node in transmission range with lowest rank as its preferred parent . Modification done in the best_parent function. If you want to rewrite this function you can copy paste the original rpl_of0 file from the instant contiki repository. This changed version can be used wherever we want the node to make a specific choice for the parent. More can be learnt about modifying RPL functions by following this link --> http://anrg.usc.edu/contiki/index.php/RPL_objective_function_modification_and_simulation_in_cooja . The exact implementation for the requirement has to be done by self though.

7. Simulation tip --> In the beginning of expperimental simulations , the packets were being dropped . This happens when the distance between the nodes is too much , the default 100 m distance is too much when the number of nodes become more as they cross each others transmission ranges , hence the distance was reduced to 15 m which is closer to a real life scenario , this distance was found suitable for a topology of 32 nodes with 4 subtrees ,hence this care should be taken when extending / modifying the implementation especially for more number of nodes. 

Initially i was changing the SMRF_FWD_DELAY() parameter or the routing convergence delay in the main root's code , but this should be tried only after trying changing the transmission ranges first , which solved the problem in my case to an extent .


8. In order to see the arrows between the nodes upon receiving the packets i.e when a node receives the packet from its parents , 
#define DEBUG DEBUG_ANNOTATE should be set and ANNOTATE("#L %u 1\n", parent_ipaddr->u8[sizeof(uip_ipaddr_t) - 1]); should be added to 
/home/user/contiki-rear/core/net/ipv6/multicast/smrf.c file . If the arrows are not required set #define DEBUG NONE in the same file .

9.A short python script is provided for calculating energy values , the folder should be changed and the energest values of each node should be copied from the time of simulation for subsequent 10 seconds. In this simulation this is from 60th to 70th second. 

10. A position.txt file has been attached which holds the X and Y coordinates of the nodes , this approach was followed so that all the schemes are evaluated with regards to the same physical topology.

11. FIPS implementation of AES_128 and MD5 (as they are publicly tested implementations) have been ported and modified to handle uint8_t values which are unsigned char and the datatype for Key structure (required by the AES implementation), this was done because contiki provides AES for llsecurity(link layer security) which will decrypt the packet at each node before forwarding defeating our purpose of key confidentiality.

12. Packets dropping , in the proposed scheme REAR and also in TKH , packets which are not intended for a particular subtree are dropped . 
Global variables are shared between the libraries , the tricky part is identifying where to declare the variable and how to use it . Few event based solutions are given on the internet which don't seem to work in the multicast setting or lead to all packets being dropped.

Our approach was to find through a set of print debug statement where to declare a variable which might cause the packets to be dropped.
A subtree variable was declared in the following file /home/user/contiki-r/core/net/ip/uip.h , as this is also included in the smrf.c file.
/home/user/contiki-r/core/net/ipv6/uip6.c decides whether multicast packets will be forwarded or not based on value returned from the multicast engine. The modification is discussed in the implementation documentation for the scheme below.

13. All the other theoretical details or formulas have been mentioned in the paper.


IMPLEMENTATION OF INDIVIDUAL SCHEMES ----->

1.The routing topology for each of the schemes is as follows in the Network.jpeg picture which can be found in the project folder.
2. The parent child relationship for each of the child is as shown by the arrows and the node 17 has been revoked , which is child of node 6 and sibling of node 10.


LKH --->

The logical key tree which has been created corresponding to it is exactly like that in the paper , the only change is it is binary in nature and with 32 nodes . 

Nodes 1-16 --> Sink1 
Nodes 25-32 --> Sink2
Nodes 21-24 --> Sink3
Nodes 19-20 --> Sink4 
Nodes 18 --> Sink5

The number after sink denotes the level at which the nodes are in the LKH.

1.GC.c this is the code for the Group Controller which replicates the key distribution by the GC . Distribution at each level is done by a function multicast_levelx (where x = 1,2,3,4,5). 
GC.c stores all the required keys , except that it doesn't store the individual key until not required in our implementation . (for simplicity , it doesn't affect the energy).

The energy level can be measured by running the simulation for each levels individually and then measuring the energy.
This can be done by changing the level number in the PROCESS_THREAD(rpl_root_process, ev, data).

2. Sink1.c , .... , Sink5.c correspond to the node numbering specified above. These have implementation to decrypt and update the keys , upon node revocation.

This implementation has problems in showing the arrows in debug mode , this could not be resolved but in the console log , the parent child relationship is still being printed which verifies that the network is same as shown in the picture. Arrow correctly shows for other implementations.

OKD ---> 

The logical key tree which has been created corresponding to it is exactly like that in the paper , the only change is it is binary in nature and with 32 nodes . 

Nodes 1-16 --> Sink1 
Nodes 25-32 --> Sink2
Nodes 21-24 --> Sink3
Nodes 19-20 --> Sink4 
Nodes 18 --> Sink5

The number after sink denotes the level at which the nodes are in the OKD

1.GC.c this is the code for the Group Controller which replicates the key distribution by the GC . Distribution at each level is done by a function multicast_levelx (where x = 1,2,3,4,5). 
GC.c stores all the required keys , except that it doesn't store the individual key until not required in our implementation . (for simplicity , it doesn't affect the energy).

The energy level can be measured by running the simulation for each levels individually and then measuring the energy.
This can be done by changing the level number in the PROCESS_THREAD(rpl_root_process, ev, data). Sink1 need not be run as the keys get derived locally by one way derivation.

2. Sink1.c , .... , Sink5.c correspond to the node numbering specified above. These have implementation to decrypt and update the keys , upon node revocation.

3. MD5sum has been used for the one-way function , this has been done because the message digest is 128 bits and hence a key value can be gotten directly. This might be modified by truncating SHA-256 digest as mentioned in the paper.


TKH ---> 

Nodes are arranged as shown in the network.jpeg
The key associations are set by following the algorithm as specified in the paper . Hence ST2.c , ST3.c and SK1.c etc. are made ,each specifies with subkey it belongs to , now in order to measure the energies , run the multicast_ST2.c , multicast_SK1.c function each time . Then in smrf.c file comment specifies how to set subtree to limit the messages to that subtree itself. Store the energest values of the affected subtree and calculate the energy as specified in the paper.


TKH_OKD ---> 

Nodes are arranged as shown in the network.jpeg
The key associations are set by following the algorithm as specified in the paper . Hence ST2.c , ST3.c and SK1.c etc. are made ,each specifies with subkey it belongs to , now in order to measure the energies , run the multicast_ST2.c , multicast_SK1.c function each time . Then in smrf.c file comment specifies how to set subtree to limit the messages to that subtree itself. Store the energest values of the affected subtree and calculate the energy as specified in the paper. Just no need to subtree chosen to be one which will derive keys locally. In our evaluation we chose the one with least number of nodes to make worst case comparison.


REAR ---> 

Nodes are arranged as shown in the network.jpeg
The key associations are set by following the algorithm as specified in the paper . Hence ST2.c , ST3.c and SK1.c etc. are made ,each specifies with subkey it belongs to , now in order to measure the energies , run the multicast_ST2.c , multicast_SK1.c function each time . Then in smrf.c file comment specifies how to set subtree to limit the messages to that subtree itself. Store the energest values of the affected subtree and calculate the energy as specified in the paper. Just no need to subtree chosen to be one which will derive keys locally. In our evaluation we chose the one with most  number of nodes as it always makes this choice.


TKH and TKH both have been run in a non-promiscuous mode setting.