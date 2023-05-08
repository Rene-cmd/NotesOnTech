#cisco #network #ccnp 
**1. What is the IPv6 address used by OSPFv3 non-DR/BDR routers to send link-state updates and link-state acknowledgments?**

-   FF02::2
-   FF02::5
-   **FF02::6**
-   FF02::9

**Explanation:** Non-DR/BDR routers send an update or link-state acknowledgment message to the DR and BDR by using the AllDRouters address FF02::6.

**2. Refer to the exhibit. Both routers R1 and R2 are configured for OSPFv3 and are routing for both IPv4 and IPv6 address families. Which two destination addresses will R1 use to establish a full adjacency with R2? (Choose two.)**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_215516.jpg?ezimgfmt=rs:606x240/rscb2/ng:webp/ngcb2)

-   ff02::5
-   **fe80::2**
-   **2001:db8:22::100**
-   172.17.66.1
-   2001:db8:21:20::2

**3. On an OSPF multiaccess network, which multicast address must a non-DR router use to send an LSU packet that contains new link-state information?**

-   224.0.0.5
-   224.0.0.1
-   **224.0.0.6**
-   224.0.0.9
-   224.0.0.2

**4. Which configuration will prevent two directly connected Cisco routers from forming an OSPFv2 neighbor adjacency?**

-   configuring mismatched OSPF process IDs on two adjacent routers
-   **configuring mismatched MTU values on two adjacent routers**
-   configuring a router ID on two adjacent routers
-   configuring a LAN interface connected to a switch as a passive interface

**5. Which type of OSPF link-state advertisement is a network LSA?**

-   type 4
-   type 1
-   type 3
-   **type 2**

**6. What advantage does WPA2 have over WPA?**

-   **WPA2 uses AES instead of TKIP.**
-   WPA2 uses static key management.
-   WPA2 uses a 32-bit WEP key for encryption.
-   WPA2 allows the caching of key information.

**Explanation:** WPA2 uses the encryption algorithm AES (Advanced Encryption Standard) which is a stronger algorithm than WPA is, which uses TKIP (Temporal Key Integrity Protocol.) WPA was created to replace WEP (Wired Equivalent Privacy) which was easily compromised. However, the WPA TKIP had to take into account the older devices still using WEP on the network and as a result still had some of the WEP vulnerabilities. This was overcome with the creation of WPA2.

**7. Which situation is an example of EAP deployment?**

-   when a wireless client sends its MAC address to the AP for authentication after being validated by the internal database of the AP
-   **when a client communicates with a RADIUS server for authenticated access to the network through the AP**
-   when unauthenticated clients associate with the AP
-   when both the AP and client are configured with the same key or secret word for authentication by the AP

**Explanation:** In a 802.1x WLAN environment, WPA2 with EAP (Extensible Authentication Protocol) allows for a back-end authentication server like Radius. In this environment, even though the supplicant is authenticated by the AP, the actual authentication process is carried out by the back-end Radius server through the WLAN controller.

**8. Which function is provided by the Cisco SD-Access Architecture controller layer?**

-   It presents all information to the user via a centralized management dashboard.
-   It interconnects all of the network devices, thus forming a fabric of interconnected nodes.
-   **It provides network automation and operational status information to the management layer.**
-   It delivers data packets to and from the network devices participating in SD-Access.

**9. Match the Cisco SD-WAN solution component with the description. (Not all options are used.)**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_220408d-768x662-1.jpg?ezimgfmt=rs:734x633/rscb2/ng:webp/ngcb2)

-   **vManage Network Management System** – enables centralized provisioning and simplifies network changes
-   **vSmart controller** – authenticates each SD-WAN router that comes online
-   **vBond orchestrator** – configured with a public IP address so that all SD-WAN devices in the network can connect to it
-   non – supports standard router features, such as OSPF, BGP, ACLS, QoS, and  
    routing policies

**10. Refer to the exhibit. A company adopts the hierarchical network model in the corporate LAN design. Layer 3 switches are deployed in the core and distribution layers. On which of the devices in this network should routing between workstation VLANs take place?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_220910.jpg?ezimgfmt=rs:301x328/rscb2/ng:webp/ngcb2)

-   **the distribution layer devices**
-   the core and distribution layer devices
-   the access layer devices
-   the core layer devices

**11. Refer to the exhibit. A network administrator needs to implement inter-VLAN routing on a hierarchical network. On which devices should the inter-VLAN routing be configured?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_221157.jpg?ezimgfmt=rs:372x290/rscb2/ng:webp/ngcb2)

-   Gateway and CS1
-   Gateway, CS1, DS1, and DS2
-   AS1 and AS2
-   **DS1 and DS2**

**12. Which QoS model uses the DSCP bits to mark packets and provides 64 possible classes of service?**

-   **DiffServ**
-   FIFO
-   best-effort
-   IntServ

**Explanation:** The DiffServ model uses 6-bits known as the DiffServ Code Point (DSCP) bits to mark traffic and offers a maximum of 64 possible classes of service. Diffserv-aware routers can then implement per-hop behaviors (PHBs) that can control packet forwarding based on the specified class of service.

**13. Which type of QoS marking is applied to Ethernet frames?**

-   IP precedence
-   **Cos**
-   DSCP
-   Tos

**Explanation:** The class of service (CoS) marking allows a Layer 2 Ethernet frame to be marked with eight levels of priority (values 0–7). This marking can be used by QoS-enabled network devices to provide preferential traffic treatment.

**14. Which feature is used by an MST region to send VLAN information to a switch that runs PVST+?**

-   PVST translation mechanism
-   **PVST simulation mechanism**
-   PVST transition mechanism
-   PVST conversion mechanism

**15. What is a solution to mitigate the MST misconfiguration with improper VLAN assignment to the IST?**

-   Ensure that only VLANs in the same MSTI for a trunk link are pruned.
-   Ensure that the MST region name is consistent across MST regions.
-   **Move the affected VLAN to an MSTI other than the IST.**
-   Move all active VLANs to the IST.

**16. Which three statements describe the building blocks that make up the IPsec protocol framework? (Choose three.)**

-   **IPsec uses encryption algorithms and keys to provide secure transfer of data.**
-   IPsec uses Diffie-Hellman as a hash algorithm to ensure integrity of data that is transmitted through a VPN.
-   **IPsec uses secret key cryptography to encrypt messages that are sent through a VPN.**
-   IPsec uses Diffie-Hellman algorithms to encrypt data that is transferred through the VPN.
-   IPsec uses 3DES algorithms to provide the highest level of security for data that is transferred through a VPN.
-   **IPsec uses ESP to provide confidential transfer of data by encrypting IP packets.**

**17. Refer to the exhibit. What two commands are needed to complete the GRE tunnel configuration on router R1? (Choose two.)**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_221702.jpg?ezimgfmt=rs:578x252/rscb2/ng:webp/ngcb2)

-   R1(config-if)# tunnel source 172.16.2.1
-   R1(config-if # tunnel destination 172.16.2.2
-   R1(config-ifj#tunnel destination 209.165.202.129
-   **R1(config-if)# tunnel destination 209.165.202.130**
-   R1(config-if)# tunnel source 209.165.202.130
-   **R1(config-if)# tunnel source 209.165.202.129**

**18. What are two reasons for creating an OSPE network with multiple areas? (Choose two.)**

-   to ensure that an area is used to connect the network to the Internet
-   to provide areas in the network for routers that are not running OSPF
-   **to reduce use of memory and processor resources**
-   to simplify configuration
-   **to reduce SPF calculations**

**19. On what type of OSPF router is interarea route summarization configured?**

-   intra-area routers
-   **ABRs**
-   backbone routers
-   ASBRs

**Explanation:** Interarea summarization is manually configured on Area Border Routers (ABRs). Because ABRs connect multiple areas, it is these routers that would summarize routes before injecting them into another area. ASBRs are configured with external route summarization. Backbone and intra-area routers have all interfaces in a single area and are not able to summarize routes into other areas.

**20. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to a system that provides tools, such as breach detection, tracking, analysis, and surgical remediation, that organizations can use when advanced malware has slipped past other defenses?**

-   AnyConnect
-   Talos
-   Threat Grid
-   **Advanced Malware Protection (AMP)**

**21. Refer to the exhibit. What are the possible port roles for ports A, B, C, and D in this RSTP-enabled network?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_222118.jpg?ezimgfmt=rs:363x342/rscb2/ng:webp/ngcb2)

-   altemate, root, designated, root
-   **alternate, designated, root, root**
-   designated, root, alternate, root
-   designated, alternate, root, root

**Explanation:** Because S1 is the root bridge, B is a designated port, and C and D root ports. RSTP supports a new port type, alternate port in discarding state, that can be port A in this scenario.

**22. Refer to the exhibit. All the displayed switches are Cisco 2960 switches with the same default priority and operating at the same bandwidth. Which three ports will be STP designated ports? (Choose three.)**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_222337.jpg?ezimgfmt=rs:450x260/rscb2/ng:webp/ngcb2)

-   **fa0/10**
-   **fa0/21**
-   **fa0/13**
-   fa0/20
-   fa0/9
-   fa0/11

**23. Which two statements describe characteristics of load balancing? (Choose two.)**

-   Load balancing occurs when a router sends the same packet to different destination networks.
-   **Unequal cost load balancing is supported by EIGRP.**
-   Load balancing occurs when the same number of packets are sent over static and dynamic routes.
-   **Load balancing allows a router to forward packets over multiple paths to the same destination network.**
-   If multiple paths with different metrics to a destinations exist, the router cannot support load balancing.

**24. Refer to the exhibit. Which type of IPv6 static route is configured in the exhibit?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_222642.jpg?ezimgfmt=rs:371x48/rscb2/ng:webp/ngcb2)

-   fully specified static route
-   directly attached static route
-   **recursive static route**
-   floating static route

**Explanation:** The route provided points to another address that must be looked up in the routing table. This makes the route a recursive static route.

**25. A network administrator has noticed an unusual amount of traffic being received on a switch port that is connected to a college classroom computer. Which tool would the administrator use to make the** **suspicious traffic available for analysis at the college data center?**

-   SNMP
-   DHCP snooping
-   **RSPAN**
-   TACACS+
-   802.1X

**26. What are two benefits of using SNMP traps? (Choose two.)**

-   They limit access for management systems only.
-   **They reduce the load on network and agent resources.**
-   **They eliminate the need for some periodic polling requests.**
-   They can passively listen for exported NetFlow datagrams.
-   They can provide statistics on TCP/IP packets that flow through Cisco devices.

**27. How will user traffic be forwarded between two laptops that are both connected to the same lightweight access point in a large enterprise topology?**

-   **The lightweight access point will forward the traffic through a CAPWAP tunnel to a WLC and receive the return traffic from the WLC to forward to the other laptop.**
-   The lightweight access point will forward the traffic through an upstream router and receive the return traffic from the router to forward to the other laptop.
-   The lightweight access point will forward the traffic on a trunk link to a distribution layer switch for routing and receive the return traffic to forward to the other laptop
-   The lightweight access point will switch the traffic between both laptops immediately.

**28. A wireless engineer is deploying an autonomous Cisco access point. What must be configured on the access point to enable remote management?**

-   **management IP address**
-   CISCO-CAPWAP-CONTROLLER. _localdomain_ target
-   TFTP server IP address target
-   DHCP option 43

**29. Which three protocols are components in the operation of 802.1x? (Choose three.)**

-   TACACS+
-   **EAPoL**
-   SSH
-   **EAP**
-   **RADIUS**
-   IPsec

**30. Match the security platform to the description. (Not all options are used.)**  
![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-06_060126.jpg?ezimgfmt=rs:734x458/rscb2/ng:webp/ngcb2)

**31. Refer to the exhibit. Which two conclusions can be derived from the output? (Choose two.)**  
![](https://itexamanswers.net/wp-content/uploads/2021/01/i212336v1n1_212336.jpg?ezimgfmt=rs:643x286/rscb2/ng:webp/ngcb2)

-   Router R1 has two successors to the 172.16.3.0/24 network
-   **There is one feasible successor to network 192.168.1.8/30.**
-   The reported distance to network 192.168.1.0/24 is 41024256
-   **The neighbor 172.16.6.1 meets the feasibility condition to reach the 192.168.1.0/24 network.**
-   The network 192.168.10.8/30 can be reached through 192.168.11.1.

**Explanation:** The second entry in the table indicates that there is one feasible successor (“1 successors”) for network 192.168.1.8/30. The last entry in the table shows that network 192.168.10.8/30 is directly connected, so it is not reachable through network 192.168.11.1. The third entry indicates that the reported distances for network 192.168.1.0 are 28116 and 2170112, not 41024256. This same entry shows that neighbor 172.16.6.1 is a feasible successor for network 192.168.1.0. The first entry indicates that R1 has only one successor, not two to network 172.16.3.0/24.

**32. A new network administrator has been asked to verify the metrics that are used by EIGRP on a Cisco device. Which two EIGRP metrics are measured by using static values on a Cisco device? (Choose two.)**

-   reliability
-   ΜTU
-   load
-   **delay**
-   **bandwidth**

**Explanation:** Bandwidth and delay are static values that are not actually tracked by a device. Load and reliability are tracked dynamically by a device over a default period of time. MTU is not used for EIGRP metrics.

**33. Which factor can be used by an AP to improve the accuracy of locating a wireless client?**

-   **RSS**
-   BSS
-   802.11r
-   DHCP

**Explanation:** To locate a device more accurately, an AP can use the received signal strength (RSS) of a client device as a measure of the distance between the two.

**34. What is required by wireless clients that participate in Cisco centralized key management for intracontroller roaming?**

-   IEEE 802.11r support
-   maintaining a list of keys used with prior AP associations
-   **Cisco Compatible Extensions (CCX) support**
-   caching a portion of the key of the authentication server

**Explanation:** Cisco Centralized Key Management (CCKM): One controller maintains a database of clients and keys on behalf of its APs and provides them to other controllers and their APs as needed during client roams. CCKM requires Cisco Compatible Extensions (CCX) support from clients.

**35. A wireless network engineer who is new to the Cisco lightweight architecture is becoming familiar with common baselines for the APs in the company. One particular AP shows no clients attached, but shows 30% channel utilization on the 2.4 GHz channel and 0% channel utilization on the 5 GHz channel. What is the issue, if any?**

-   There is an issue with the 5 GHz settings or the antenna.
-   **The channel is significantly utilized by other nearby APs and clients using the 2.4 GHz frequency range.**
-   Because no clients are attached to the AP and at least one of the frequency channels is showing utilization, authentication issues between the clients and the authentication server exist.
-   Because no clients are attached to the AP, the AP itself is suspect.

**36. A network engineer that works for a company that uses lightweight APs is examining various performance factors for the wireless network in a particular area of the company. The engineer notices that one AP has an index value of 40 for air quality. What significance, if any, does this value provide?**

-   The engineer should physically examine the surrounding area of the AP for potential RF obstructions.
-   The engineer might evaluate this index value over a period of 30 days to see if the air conditioning or heat is affecting the RF range of the AP.
-   An air quality value of 40 is within acceptable performance range for a lightweight AP, so no action is required by the network engineer.
-   **Because of poor air quality, the engineer should be concerned and evaluate other wireless channels for possible use.**

**37. In which type of deployment is the Chef server hosted in the cloud?**

-   private Chef
-   Chef Solo
-   **hosted Chef**
-   Chef Client and Server

**Explanation:** There are several types of deployment models for the Chef server.  
Chef Solo: The Chef server is hosted locally on the workstation.  
Chef Client and Server: This is a typical Chef deployment with distributed components.  
Hosted Chef: The Chef server is hosted in the cloud.  
Private Chef: All Chef components are within the same enterprise network.

**38. What protocol is used by puppet masters to push configuration code to puppet agents?**

-   SSH
-   IPsec
-   HTTPS
-   **SSL**

**39. What does BGP use to exchange routing updates with neighbors?**

-   group identification numbers
-   **TCP connections**
-   hellos
-   area numbers

**Explanation:** BGP uses TCP port 179 to communicate with other routers. TCP allows for handling of fragmentation, sequencing, and reliability (acknowledgment and retransmission) of communication packets.

**40. Refer to the exhibit. A network administrator issues the show bgp ipv4 unicast 172.16.0.0 command to check the route information in the BGP table. Which statement describes the characteristic of the advertisement of this route?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_224626.jpg?ezimgfmt=rs:696x160/rscb2/ng:webp/ngcb2)

-   **The route is advertised with the aggregate-address 172.16.0.0 255.255.240.0 summary-only command.**
-   The route is advertised through an IGP
-   The route is advertised for networks directly connected to the BGP router 192.168.2.2.
-   The route is advertised through a static route

**Explanation:** As indicated in the BGP table, the route is an aggregate route 172.16.0.0/20 learned from the neighbor 192.168.2.2. The atomic-aggregate attribute indicates loss of path attributes, such as AS_Path in this scenario.

**41. What are three examples of hypervisors? (Choose three.)**

-   **vSphere**
-   rkt
-   **Hyper-V**
-   VServer
-   Docker
-   **XenServer**

**Explanation:** VMware vSphere, Microsoft HyperV, Citrix XenServer, and Red Hat Kernel-based Virtual Machine (KVM) are the most popular hypervisors in the server virtualization market

**42. Which two methods are used by a single-root I/O virtualization (SR-IOV) enabled switch to switch traffic between VNFs? (Choose two.)**

-   through a DMVPN
-   through a VXLAN
-   **through an external switch**
-   **through the pNIC**
-   through a vSwitch

**Explanation:** An SR-IOV-enabled pNIC supports two different modes for switching traffic between VNFs:

-   Virtual Ethernet Bridge (VEB): Traffic between VNFs attached to the same pNIC is hardware switched directly by the pNIC.
-   Virtual Ethernet Port Aggregator (VEPA): Traffic between VNFs attached to the same pNIC is switched by an external switch.

**43. Refer to the exhibit. Spanning-tree port priorities are listed beneath each interface. The network administrator enters the `spanning-tree vlan 1 root primary` command on S4. What is the effect of the command?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_224931.jpg?ezimgfmt=rs:469x361/rscb2/ng:webp/ngcb2)

-   **S3 Gi0/2 transitions from designated port to root port because of path cost changes caused by the root change.**
-   Spanning tree blocks Gi0/1 on S3 to prevent a redundant path from S1.
-   S2 Gi0/1 becomes a nondesignated port because Gi0/2 has a lower path cost to S4.
-   Port priority makes Gi0/2 on S1 a root port.
-   S4 is already the root bridge, so there are no port changes.

**Explanation:** According to the exhibit, S1 is the root bridge. After the **spanning-tree vlan 1 root primary** command on S4 is issued, S4 becomes the root bridge, because S4 priority is modified to 24576 and the MAC address is lower than the MAC address of S1. This causes S3 Gi0/2 port to transition from designated port to root port because of path cost changes caused by this root change.

**44. Network users complain that the network is running very slowly. Upon investigation, a network technician discovers CPU spikes and exhausted memory resources on all the network devices. Also, numerous** **syslog messages are being generated that note continuous MAC address relearning. What is the most likely cause of the problem?**

-   The routing protocol has been misconfigured and a routing loop is evident.
-   Keepalives are expected but do not arrive.
-   The dynamic routing protocol has not yet converged the network.
-   An incorrect encapsulation has been configured on one of the trunks that connect a Layer 2 device to a Layer 3 device within the affected segment.
-   **A Layer 2 forwarding loop condition is present.**

**45. What type of signal requires little extra bandwidth because data is being sent at a relatively low bit rate?**

-   orthogonal frequency division multiplexing
-   direct sequence spread spectrum
-   **narrowband**
-   parallel

**46. Which wireless technology can combine the use of multiple antennas and radio chains to receive multiple copies of degraded wireless signals and convert them into one usable reconstructed wireless signal?**

-   spatial multiplexing
-   spatial streams
-   **maximal-ratio combining**
-   transmit beamforming

**47. An administrator has configured an access list on R1 to allow SSH administrative access from host 172.16.1.100. Which command correctly applies the ACL?**

-   R1(config-if)# ip access-group 1 in
-   R1(config-if)# ip access-group 1 out
-   **R1(config-line)# access-class 1 in**
-   R1(config-line)# access-class 1 out

**Explanation:** Administrative access over SSH to the router is through the vty lines. Therefore, the ACL must be applied to those lines in the inbound direction. This is accomplished by entering line configuration mode and issuing the access-class command.

**48. What two additional features does a Layer 3 switch offer compared with a Layer 2 switch? (Choose two.)**

-   traffic that is forwarded at wire speeds
-   **routing that is based upon IP addresses**
-   forwarding that is based upon MAC addresses
-   hardware-based switching
-   **forwarding between different networks**

**49. What is true about TCAM lookups that are associated with CEF switching?**

-   **A single TCAM lookup provides Layer 2, Layer 3, and ACL information**
-   TCAM includes only Layer 3 lookup information.
-   TCAM lookup tables are used only for the rapid processing of ACLs within CEF.
-   TCAM lookup tables are used only for the Layer 3 forwarding operation.

**50. A network operator is testing a network management application that uses REST API to communicate with network devices. The operator received an HTTP response code 403 in a test step. What does this response code indicate?**

-   **Access is not granted based on supplied credentials.**
-   The page at HTTP URL location does not exist or is hidden.
-   Client has not authenticated to access the site or API call.
-   Request failed due to a client-side issue.

**Explanation:** Most common HTTP status codes include:

200 – OK (using GET or POST to exchange data with an API successfully)  
201 – Created (creating resources by using a REST API call successfully)  
400 – Bad Request (The request from the client is failed due to client-side issue.)  
401 – Unauthorized (The client is not authenticated to access site or API call.)  
403 – Forbidden (The access request is not granted based on the supplied credentials.)  
404 – Not Found (The page requested at HTTP URL location does not exist or is hidden.)

**51. Refer to the exhibit. Which data format is used to describe the list of interfaces?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_225628.jpg?ezimgfmt=rs:281x272/rscb2/ng:webp/ngcb2)

-   XML
-   YAML
-   JSON
-   **YANG**

**52. Refer to the exhibit. Switch SW-A is to be used as a temporary replacement for another switch in the VTP Student domain. What two pieces of information are indicated from the exhibited output? (Choose two.)**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_225757.jpg?ezimgfmt=rs:559x294/rscb2/ng:webp/ngcb2)

-   **There is a risk that the switch may cause incorrect VLAN information to be sent through the domain.**
-   **This switch will update its VLAN configuration when VLAN changes are made on a VTP server in the same domain.**
-   VTP will block frame forwarding on at least one redundant trunk port that is configured on this switch.
-   The other switches in the domain can be running either VTP version 1 or 2.
-   VLAN configuration changes made on this switch will be sent to other devices in the VTP domain.

**Explanation:** If a switch on the same VTP domain is added to the network and the switch has a higher configuration revision number, valid VLANs can be deleted and VLANs from the new switch can be sent to other switches in the VTP domain. This can result in loss of connectivity for some network devices. Always put a false domain name on a new switch and then change the VTP domain name to the correct one so the configuration revision number will be at 0 on the switch to be added.

**53. Which two mode combinations would result in the successful negotiation of an EtherChannel? (Choose two.)**

-   auto; auto
-   **active; passive**
-   active; on
-   passive; auto
-   desirable; active
-   **desirable; desirable**

**Explanation:** The combinations of modes that will form an EtherChannel are as follows: on/on, active/passive, active/active, desirable/auto, and desirable/desirable.

**54. Refer to the exhibit. A network administrator configured routers R1 and R2 as part of HSRP group 1. After the routers have been reloaded, a user on Host1 complained of lack of connectivity to the Internet The network administrator issued the show standby brief command on both routers to verify the HSRP operations. In addition, the administrator observed the ARP table on Host1. Which entry should be seen in the ARP table on Host1 in order to gain connectivity to the Internet?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_230114.jpg?ezimgfmt=rs:543x386/rscb2/ng:webp/ngcb2)

-   the IP address and the MAC address of R1
-   the virtual IP address of the HSRP group 1 and the MAC address of R1
-   **the virtual IP address and the virtual MAC address for the HSRP group 1**
-   the virtual IP address of the HSRP group 1 and the MAC address of R2

**Explanation:** Hosts will send an ARP request to the default gateway which is the virtual IP address. ARP replies from the HSRP routers contain the virtual MAC address. The host ARP tables will contain a mapping of the virtual IP to the virtual MAC.  
– the IP address and the MAC address of R1

**55. A network engineer has issued the command `standby 10 track 1 decrement 20` on an SVI of a multilayer switch. What is the purpose of this command?**

-   HSRP tracks 10 objects on that interface and decrements the priority of each object by 20 if the interface fails once.
-   HSRP tracks that interface and dynamically decrements its priority by 20 every time it fails, up to a maximum of 10 failures.
-   **It creates a tracked object against the interface line protocol and links the HSRP instance to the tracked object so that the priority decrements by 20 if that interface goes down.**
-   It decrements the priority of the interface by 20 so that objects tracked by the HSRP instance do not use that interface unless the active interface goes down.

**56. Refer to the exhibit. For which autonomous system would running BGP not be appropriate?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/2021-01-15_230439.jpg?ezimgfmt=rs:534x258/rscb2/ng:webp/ngcb2)

-   65004
-   65005
-   65002
-   **65003**

**Explanation:** It is appropriate to use BGP when an autonomous system is multihomed, or has more than one connection to another autonomous system or to the Internet. BGP is not appropriate for single-homed autonomous systems. Autonomous system 65003 is a single-homed AS because it is only connected to one other autonomous system, 65002.

**57. A network administrator is configuring an ACL to match networks for BGP route filtering. The administrator creates an ACE permit ip 10.0.32.0 0.0.31.0 255.255.255.0 0.0.0.192 . Which network matches the ACE?**

-   10.0.31.0/26
-   **10.0.62.0/25**
-   10.0.66.0/24
-   10.0.32.0/27

**58. How does an RP MA announcement provide redundancy in a PIM domain configured with the auto-RP mechanism?**

-   RP MA announcements contain prune times to ensure a fast election if a change is detected.
-   RP MA announcements are sent out every 60 seconds only to ensure an election every 60 seconds in the event an RP goes down.
-   **RP MA announcements contain elected RPs and group to RP mappings to ensure changes are detected and an election held if necessary.**
-   RP MA announcements contain the unicast address to ensure the election with the highest unicast address succeeds as the new RP.

**59. Which two statements describe characteristics of shared trees for PIM distribution? (Choose two.)**

-   **A shared tree has a mandatory rendezvous point.**
-   **A shared tree places an (*,G) entry in the multicast routing table of each router.**
-   A shared tree places an (S,G) entry in the multicast routing table of each router.
-   A shared distribution tree requires higher memory resources than the source distribution tree does.
-   A shared tree creates an optimal path between each source router and each last hop router.

**60. A network administrator uses the spanning-tree portfast bpduguard default global configuration command to enable BPDU guard on a switch. However, BPDU guard is not activated on all access ports. What is the cause of the issue?**

-   BPDU guard needs to be activated in the interface configuration command mode.
-   Access ports configured with root guard cannot be configured with BPDU guard.
-   Access ports belong to different VLANs.
-   **PortFast is not configured on all access ports.**

**61. Refer to the exhibit. Router R1 has an OSPF neighbor relationship with the ISP router over the 192.168.0.32 network. The 192.168.0.36 network link should serve as a backup when the OSPF link goes down. The floating static route command ip route 0.0.0.0 0.0.0.0 S0/0/1 100 was issued on R1 and now traffic is using the backup link even when the OSPF link is up and functioning. Which change should be made to the static route command so that traffic will only use the OSPF link when it is up?​**  
![](https://itexamanswers.net/wp-content/uploads/2021/02/i210868v1n2_210868.jpg?ezimgfmt=rs:506x243/rscb2/ng:webp/ngcb2)

-   Change the destination network to 192.168.0.34.
-   Add the next hop neighbor address of 192.168.0.36.
-   Change the administrative distance to 1.
-   **Change the administrative distance to 120.**

**Explanation:** The problem with the current floating static route is that the administrative distance is set too low. The administrative distance will need to be higher than that of OSPF, which is 110, so that the router will only use the OSPF link when it is up.

**62. Which three functions are performed at the distribution layer of the hierarchical network model? (Choose three.)**

-   transports large amounts of data between different geographic sites
-   forwards traffic to other hosts on the same logical network
-   **forwards traffic that is destined for other networks**
-   **isolates network problems to prevent them from affecting the core layer**
-   allows end users to access the local network
-   **provides a connection point for separate local networks**

**Explanation:** The primary function of the distribution layer is to aggregate access layer switches in a given building or campus. The distribution layer provides a boundary between the Layer 2 domain of the access layer and the Layer 3 domain of the core. On the Layer 2 side, it creates a boundary for Spanning Tree Protocol (STP), limiting propagation of Layer 2 faults. On the Layer 3 side, it provides a logical point to summarize IP routing information when it enters the core Layer. The summarization reduces IP route tables for easier troubleshooting and reduces protocol overhead for faster recovery from failures.

**63. Refer to the exhibit. Which trunk link will not forward any traffic after the root bridge election process is complete?**  
![](https://itexamanswers.net/wp-content/uploads/2021/02/i223534v1n1_223534.jpg?ezimgfmt=rs:499x382/rscb2/ng:webp/ngcb2)

-   Trunk1
-   **Trunk2**
-   Trunk3
-   Trunk4

**Explanation:** S4 has the lowest bridge ID, thus S4 is the root bridge. Because the path cost S1-S2-S4 is lower than the path cost S1-S3-S4, path S1-S2-S4 is the preferred path for S1 to reach S4. Thus, STP will set the S1 port Fa0/1 to a blocking state, and the trunk link Trunk2 will not forward any traffic.

**64. Which WLAN security protocol avoids attacks by strengthening the key exchange between clients and APs using a method known as Simultaneous Authentication of Equals?**

-   **WPA3-Personal**
-   WEP
-   WPA2-Personal
-   WPA-Personal

**Explanation:** With WPA-Personal and WPA2-Personal modes, a malicious user can eavesdrop and capture the four-way handshake between a client and an AP. WPA3-Personal avoids such attacks by strengthening the key exchange between clients and APs through a method knows as SAE (Simultaneous Authentication of Equals).

**65. What is the reason for a network engineer to alter the default reference bandwidth parameter when configuring OSPF?**

-   **to more accurately reflect the cost of links greater than 100 Mb/s**
-   to increase the speed of the link
-   to enable the link for OSPF routing
-   to force that specific link to be used in the destination route

**Explanation:** By default, Fast Ethernet, Gigabit, and 10 Gigabit Ethernet interfaces all have a cost of 1. Altering the default reference bandwidth alters the cost calculation, allowing each speed to be more accurately reflected in the cost.

**66. Which statement describes the Cisco Embedded Event Manager?**

-   It is a collector and aggregator of network telemetry data that performs network security analysis and monitoring.
-   **It is a Cisco IOS tool that allows engineers to build task automation software applets.**
-   It is a centralized management platform that aggregates and correlates threat events.
-   It is a security policy management platform that provides highly secure network access control (NAC) to users and devices.

**Explanation:** The Cisco Embedded Event Manager (EEM) is a Cisco IOS tool that uses software applets to automate tasks on a Cisco device. EEM is completely contained within the local device and needs no external scripting or monitoring device.

**67. What is JSON?**

-   **It is a data format for storing and transporting data.**
-   It is a compiled programming language.
-   It is a database.
-   It is a scripting language.

**Explanation:** JavaScript Object Notation (JSON) is a data format used by applications to store and transport data.

**68. Refer to the exhibit. What can be concluded about network 192.168.4.0 in the R2 routing table?**  
![](https://itexamanswers.net/wp-content/uploads/2020/10/i214329v1n1_214329.png?ezimgfmt=rs:500x216/rscb2/ng:webp/ngcb2)

-   The network can be reached through the GigabitEthernet0/0 interface.
-   **The network was learned from a router within the same area as R2.**
-   This network should be used to forward traffic toward external networks.
-   The network was learned through summary LSAs from an ABR.

**Explanation:** In a routing table, a route with the label O indicates a network that is advertised by another router in the same area. In this case, the exit interface is GigabitEthernet0/1. The designation O IA means the entry was learned from an interarea LSA that was generated from an ABR. Label O*E2 indicates an external network. In this case, the network designation of 0.0.0.0/0 indicates that this external network is the default route for all traffic that goes to external networks.

**69. Refer to the exhibit. A network administrator is verifying the bridge ID and the status of this switch in the STP election. Which statement is correct based on the command output?**  
![](https://itexamanswers.net/wp-content/uploads/2021/02/i216403v1n1_216403-2.jpg?ezimgfmt=rs:590x255/rscb2/ng:webp/ngcb2)

-   The STP instance on Switch_2 is using the default STP priority and the election is based on Switch_2 MAC address.
-   **The bridge priority of Switch_2 has been lowered to a predefined value to become the root bridge.**
-   The bridge priority of Switch_2 has been lowered to a predefined value to become the backup root bridge.
-   The STP instance on Switch_2 is failing due to no ports being blocked and all switches believing they are the root.

**Explanation:** The priority value 24576 is a predefined value that is implemented by the command spanning-tree vlan 10 root primary . This command configures Switch_2 to become the root switch. A root switch will have all forwarding interfaces and no root ports.

**70. What is the function of a QoS trust boundary?**

-   A trust boundary identifies the location where traffic cannot be remarked.
-   A trust boundary only allows traffic to enter if it has previously been marked.
-   **A trust boundary identifies which devices trust the marking on packets that enter a network.**
-   A trust boundary only allows traffic from trusted endpoints to enter the network.

**Explanation:** Network traffic is classified and marked as close to the source device as possible. The trust boundary is the location where the QoS markings on a packet are trusted as they enter an enterprise network.

**71. What is a purpose of the OSPFv3 type 8 and type 9 LSAs?**

-   advertise default and external routes learned from other protocols
-   **advertise NSSA LSAs for redistributed routes in an area**
-   allow area routers to locate ASBRs in other areas
-   eliminate the need for SPF calculations when interface addresses are added or changed

**72. Which authentication protocol is server-based and preferred for device access control?**

-   802.1x
-   RADIUS
-   **TACACS+**
-   SSHv2

**73. What is a characteristic of TACACS+?**

-   TACACS+ uses UDP port 1645 or 1812 for authentication, and UDP port 1646 or 1813 for accounting.
-   TACACS+ is backward compatible with TACACS and RADIUS.
-   TACACS+ is an open IETF standard.
-   **TACACS+ provides authorization of router commands on a per-user or per-group basis.**

**Explanation:** The TACACS+ protocol provides flexibility in AAA services. For example, using TACACS+, administrators can select authorization policies to be applied on a per-user or per-group basis.

**74. Which two options best describe an exterior routing protocol (EGP)? (Choose two.)**

-   **a routing protocol that exchanges routing information between different autonomous systems**
-   a routing protocol that exchanges routing information within an autonomous system
-   a routing protocol that is used for intradomain routing such as IS-IS and OSPFv3
-   an intradomain routing protocol
-   **an interdomain routing protocol**

**75. A company deploys a Cisco wireless network over a large campus. A network administrator is configuring the Layer 3 roaming capability on WLCs. What is the purpose of using Layer 3 roaming?**

-   **to provide clients with the same IP address while they roam around campus**
-   to enable internet access for clients on the wireless network
-   to provide intracontroller roaming for clients
-   to ensure that APs belonging to different mobility groups can communicate

**Explanation:** If the two VLAN IDs differ, the controllers arrange a Layer 3 roam (also known as a local-to-foreign roam) that will allow the client to keep using its IP address.

**76. A high school is deploying a wireless network for the campus. The wireless network consists of 100 lightweight APs and 3 WLCs. These 3 WLCs manage APs in 3 areas: (1) classroom buildings, (2) the library, the dining hall, and an indoor gymnasium, and (3) administration buildings. Which term is used to describe the type of roaming that occurs when a student using a smartphone roams from a classroom to the library?**

-   intracontroller roaming
-   end user roaming
-   autonomous roaming
-   **intercontroller roaming**

**77. A network administrator is configuring a prefix list with the ip prefix-list command. Which entry is valid?**

-   ip prefix-list LIST1 seq 10 permit 192.168.10.0/15 le 23 ge 27
-   ip prefix-list LIST1 seq 1 permit 10.18.0.0/16 ge 12
-   ip prefix-list LIST1 seq 10 permit 12.16.10.0/12 le 22 ge 24
-   **ip prefix-list LIST1 seq 5 permit 192.168.0.0/14 ge 24 le 28**

**78. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to a VPN client that provides VPN access and enhanced security to assess the compliance of an endpoint for things like antivirus, antispyware, and firewall software installed on the host?**

-   Advanced Malware Protection (AMP)
-   Web Security Appliance (WSA)
-   Umbrella
-   **AnyConnect**

**79. What happens to the signal strength of an RF signal due to wave spreading?**

-   **The signal strength of the RF signal will fall off quickly near the transmitter but more slowly farther away.**
-   The signal strength of the RF signal will fall off equally near the transmitter and also farther away.
-   The signal strength of the RF signal will fall off slowly near the receiver and more quickly farther away.
-   The signal strength of the RF signal will fall off slowly near the transmitter but more quickly farther away.

**80. Which Cisco security solution uses dynamic content analysis to identify inappropriate content in real time for unknown websites?**

-   Cisco AMP
-   Cisco Umbrella
-   Cisco Threat Grid
-   **Cisco WSA**

**Explanation:** Reference: [Here (from cisco)](https://www.cisco.com/c/en/us/products/collateral/security/web-security-appliance/solution-overview-c22-732948.html)

**81. Which Cisco technology is based on the ETSI NFV architectural framework for reducing operational complexity of enterprise branch environments?**

-   Cisco UCS
-   Cisco ISE
-   Cisco DNA
-   **Cisco ENFV**

**Explanation:** Enterprise NFV reduces operational complexity of branch environments by hosting networking functions as software on standard x86-based platforms.  
[Enterprise Network Functions Virtualization (NFV) – Cisco](https://www.cisco.com/c/en/us/solutions/enterprise-networks/enterprise-network-functions-virtualization-nfv/index.html)

**82. A network administrator is configuring IPv6 route summarization on a BGP router with the command aggregate-address 2001:db8::/60 summary-only . Which two component networks match the aggregated route? (Choose two.)**

-   2001:db8:0:24::/64
-   2001:db8:0:12::/64
-   2001:db8:0:15::/64
-   **2001:db8:0:0::/64**
-   **2001:db8:0:e::/64**

**83. Which special-purpose mode is configured on a lightweight AP that is acting as a dedicated sensor while determining the position of stations using location-based services?**

-   sniffer
-   local
-   rogue detector
-   **monitor**

**84. What determines the software image release that a lightweight access point will be running?**

-   the wireless NIC driver version of the mobile device that connects to the AP
-   **the WLC software release version on the WLC to which the AP joins**
-   the version information provided by the DHCP server as part of the AP boot process
-   the IOS version of the access switch connected to the AP

**Explanation:** Be aware that you cannot control which software image release a lightweight AP runs.  
Rather, the WLC that the AP joins determines the release, based on its own software version.

**85. What are three benefits of a hierarchical network model? (Choose three.)**

-   reduced size of the physical layout
-   elimination of the need for wiring closets
-   **simplification of management and troubleshooting**
-   **increased fault tolerance of the network**
-   elimination of the need for Layer 3 functionality
-   **reduced contention for bandwidth**

**86. A company has an extensive wireless network of multiple APs and a WLC. Users in one particular area complain of the lack of wireless connectivity. The network engineer verifies that the two APs in that area are communicating with the WLC. The network engineer checks the status of one particular client and the WLC interface shows a black client status dot for DHCP. The network engineer checks the status of another client and it too shows a black status dot of DHCP. What is the most likely problem?**

-   The wireless devices do not have IP addressing information to participate on the wireless network.
-   **The WLC has not been configured for DHCP.**
-   The AP in the area has not received the proper IP addressing information.
-   The AP in the area has received an IP address, mask, and default gateway, but has not received the IP address of one or more WLCs with which to register.

**87. How do Layer 3 switches differ from traditional routers?**

-   Layer 3 switches never perform routing lookups. Routers must always perform routing lookups.
-   **Layer 3 switches use ASICs for routing. Routers are software based.**
-   Layer 3 switches are used in LANs. Routers are used in WANs.
-   Layer 3 switches forward packets based on MAC addresses only. Routers use IP addresses for forwarding.

**88. Refer to the exhibit. The network has EIGRP configured on all routers and has converged on the routes advertised. PIM sparse mode has been also configured on all routers. The routers between the source and the rendezvous point (RP) have (S,G) state in the multicast routing table and the routers between the RP and the receivers have (*,G) state in their multicast routing tables. After the first multicast packet is received by the Receivers and the switchover takes place, how will the multicast traffic continue to flow from the source to the receivers?**  
![](https://itexamanswers.net/wp-content/uploads/2021/01/i351148v4n1_351148.png?ezimgfmt=rs:607x474/rscb2/ng:webp/ngcb2)

-   The traffic will flow via source tree from the source to the RP and via shared tree from the RP to the receivers.
-   **The traffic will flow via source tree from the source to the receivers.**
-   The traffic will flow via shared tree from the source to the RP and via shared tree from the RP to the receivers.
-   The traffic will flow via shared tree from the source to the RP and via source tree from the RP to the receivers.

**89. Which situation is a good case for a network technician to troubleshoot a problem using the ERSPAN tool?**

-   a problem in the purchasing department and accessing the switch that connects to all the purchasing network devices
-   a problem appeared on one switch, but the technician wants to have the mirrored traffic captured on another switch in the same building that is close to the workstation used by the technician
-   a problem where the technician suspects that traffic from one VLAN is affecting another VLAN
-   **a problem that is at a different location, but within the same company**

**Explanation:** Encapsulated Remote Switched Port Analyzer (ERSPAN): You can capture network traffic on a remote device and send the traffic to the local system through Layer 3 (routing) toward a local port attached to some sort of traffic analyzer.

**90. Which parameter must match for all switches in the same MST region?**

-   IOS version
-   trunk link encapsulation method
-   **version number**
-   bridge priority

**Explanation:** The MST version number must match for all switches in the same MST region.

**91. Which overlay tunnel technology is established by fabric APs to transport wireless client data in an SD-Access wireless deployment?**

-   GRE
-   MPLS
-   IPsec
-   **VXLAN**

**92. What are two main components of SD-Access? (Choose two.)**

-   **Cisco Campus Fabric solution**
-   Cisco Identity Services Engine
-   **Cisco DNA Center**
-   Cisco Network Control Platform
-   Cisco Network Data Platform

**93. What are two purposes of LISP? (Choose two.)**

-   **It is an overlay tunneling technology.**
-   It provides a permanent control plane connection over a DTLS tunnel.
-   It authenticates vSmart controllers and SD-WAN routers.
-   It performs load balancing of SD-WAN routers across vSmart controllers.
-   **It is an architecture created to address routing scalability problems.**

**94. What are two differences between SNMP and NETCONF? (Choose two.)**

-   SNMP runs over TCP, whereas NETCONF runs over UDP.
-   **SNMP uses object identifiers (OIDs) to describe resources, whereas NETCONF uses paths.**
-   **SNMP cannot distinguish between configuration data and operational data, whereas NETCONF can.**
-   SNMP can collect device status but cannot make configuration changes, whereas NETCONF can make configuration changes.
-   SNMP uses JSON to encode data, whereas NETCONF uses XML.

**95. Refer to the exhibit. An ACL was configured on R1 with the intention of denying traffic from subnet 172.16.4.0/24 into subnet 172.16.3.0/24. All other traffic into subnet 172.16.3.0/24 should be permitted. This standard ACL was then applied outbound on interface G0/0/0. Which conclusion can be drawn from this configuration?​**

![](https://itexamanswers.net/wp-content/uploads/2021/01/1.jpg?ezimgfmt=rs:730x372/rscb2/ng:webp/ngcb2)

-   Only traffic from the 172.16.4.0/24 subnet is blocked, and all other traffic is allowed.​
-   The ACL should be applied to the GigabitEthernet 0/0/0 interface of R1 inbound to accomplish the requirements.
-   **All traffic will be blocked, not just traffic from the 172.16.4.0/24 subnet.**
-   The ACL should be applied outbound on all interfaces of R1.
-   An extended ACL must be used in this situation.

**Explanation:** Because of the implicit deny at the end of all ACLs, the access-list 1 permit any command must be included to ensure that only traffic from the 172.16.4.0/24 subnet is blocked and that all other traffic is allowed.​

**96. What is the correct method to configure route summarization on an OSPF router?**

-   Configure the ABR and ASBR to summarize routes on an interface basis.
-   Do nothing because summarization is on by default.
-   Configure OSPF and instruct the ASBR to summarize internal area routes.
-   **Configure OSPF and instruct the ABR to summarize specific area routes.**

**97. The network administrator configures the router with the ip route 172.16.1.0 255.255.255.0 172.16.2.2 command. How will this route appear in the routing table?**

-   C 172.16.1.0 [1/0] via 172.16.2.2
-   **S 172.16.1.0 [1/0] via 172.16.2.2**
-   S 172.16.1.0 is directly connected, Serial0/0
-   C 172.16.1.0 is directly connected, Serial0/0

**Explanation:** The route will appear in the routing with a code of S (Static).

**98. A company has decided to implement VXLANs. What are two types of VTEP interfaces that will be deployed? (Choose two.)**

-   **local LAN interface**
-   VNI
-   **IP interface**
-   tunnel interface
-   PETR

**Explanation:** Each VTEP has two interfaces:

-   Local LAN interfaces: These interfaces on the local LAN segment provide bridging between local hosts.
-   IP interface: This is a core-facing network interface for VXLAN. The IP interface’s IP address helps identify the VTEP in the network. It is also used for VXLAN traffic encapsulation and de-encapsulation.

**99. How does an antenna add gain to a wireless signal?**

-   An antenna is designed to function as if it were isotropic and provides varying levels of gain across 360 degrees of coverage.
-   An antenna uses specific circuitry to increase the gain of a wireless signal before transmission.
-   An antenna uses external power to increase the gain of a wireless signal during transmission.
-   **An antenna shapes the RF energy as it is propagated into free space.**

**Explanation:** Antennas are passive devices; they do not amplify a transmitter’s signal with any circuitry or external power. Instead, they amplify or add gain to the signal by shaping the RF energy as it is propagated into free space.

**100. Refer to the exhibit. A corporate network is using NTP to synchronize the time across devices. What can be determined from the displayed output?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/6.2021-03-04_084002.jpg?ezimgfmt=rs:734x180/rscb2/ng:webp/ngcb2)

-   The time on Router03 may not be reliable because it is offset by more than 7 seconds to the time server.
-   The interface on Router03 that connects to the time sever has the IPv4 address 209.165.200.225.
-   Router03 time is synchronized to a stratum 2 time server.
-   **Router03 is a stratum 2 device that can provide NTP service to other devices in the network.**

**101. Refer to the exhibit. R1 is configured for NAT as displayed. What is wrong with the configuration?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/7.2021-03-04_084054.jpg?ezimgfmt=rs:734x390/rscb2/ng:webp/ngcb2)

-   **NAT-POOL2 is not bound to ACL 1.**
-   Interface Fa0/0 should be identified as an outside NAT interface.
-   The NAT pool is incorrect.
-   Access-list 1 is misconfigured.

**Explanation:** R1 has to have NAT-POOL2 bound to ACL 1. This is accomplished with the command R1(config)#ip nat inside source list 1 pool NAT-POOL2. This would enable the router to check for all interesting traffic and if it matches ACL 1 it would be translated by use of the addresses in NAT-POOL2.

**102. Which type of OSPF link-state advertisement advertises redistributed routes in NSSAs?**

-   **type 7**
-   type 5
-   type 4
-   type 6

**Explanation:** OSPF uses six LSA types for IPv4 routing:

-   Type 1, router LSA: Advertises the LSAs that originate within an area
-   Type 2, network LSA: Advertises a multi-access network segment attached to a DR
-   Type 3, summary LSA: Advertises network prefixes that originated from a different area
-   Type 4, ASBR summary LSA: Advertises a summary LSA for a specific ASBR
-   Type 5, AS external LSA: Advertises LSAs for routes that have been redistributed
-   **Type 7, NSSA external LSA: Advertises redistributed routes in NSSAs.**

**103. What command specifies a BGP neighbor that has an IP address of 5.5.5.5/24 and that is in AS 500?**

-   **(config-router)# neighbor 5.5.5.5 remote-as 500**
-   (config-router)# network 5.0.0.0 0.0.0.255
-   (config-router)# router bgp 500
-   (config-router)# neighbor 500 remote-as 5.5.5.5

**Explanation:** The neighbor command is used to specify an EBGP neighbor router and peer with it. The command requires that the AS number of the neighbor be included as part of the command.

**104. Which two statements are true about WRED? (Choose two.)**

-   **WRED will use the average queue depth of an interface when determining if a packet should be dropped.**
-   WRED does not support ECN.
-   WRED uses a tail drop system for its queue buffers.
-   **WRED uses the IP precedence or DSCP marking of a packet when determining if a packet should be dropped.**
-   WRED will drop packets marked AFx1 more aggressively than it will drop packets marked AFx3 from the queue.

**Explanation:** Weighted random early detection (WRED) is a congestion avoidance mechanism. Different IP precedence and DSCP values each have RED profiles, which determine the probability of packet discard based on the average queue depth of an interface.

**105. Refer to the exhibit. Which two networks contain feasible successors? (Choose two.)**

![](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22778%22%20height=%22557%22%3E%3C/svg%3E)

-   **192.168.71.0**
-   192.168.51.0
-   **10.44.100.252**
-   10.44.104.253
-   10.44.101.252

**Explanation:** Feasible successors are installed in the EIGRP routing table when the successor becomes unavailable. Feasible successors are backup routes that are have a metric higher than that of successors.

**106. Refer to the exhibit. A network administrator issues the show ip protocols command. Based on the exhibited output, what can be concluded?**

![](https://itexamanswers.net/wp-content/uploads/2021/01/12.2021-03-04_084712.jpg?ezimgfmt=rs:498x270/rscb2/ng:webp/ngcb2)

-   **The EIGRP K values are default values.**
-   R1 receives routes to the network 192.168.1.0/24 and 10.0.0.0/24.
-   Up to 4 routes of different metric values to the same destination network will be included in the routing table.
-   The no auto-summary command is not applied for the EIGRP operation.

**Explanation:** The output indicates that the K values are in default (K1=1, K2=0, K3=1, K4=0, K5=0). The no auto-summary command is used since automatic summarization is not in effect. R1 is advertising the 192.168.1.0 and 10.0.0.0 networks, not receiving advertisements about them. Up to 4 equal metric paths to the same destination network will be included in the routing table since the metric variance parameter is set to 1.

**107. Which three addresses could be used as the destination address for OSPFv3 messages? (Choose three.)**

-   2001:db8:cafe::1
-   **FE80::1**
-   **FF02::5**
-   FF02::1:2
-   FF02::A
-   **FF02::6**

**Explanation:** OSPFv6 messages can be sent to either the OSPF router multicast FF02::5, the OSPF DR/BDR multicast FF02::6, or the link-local address.

**108. What function is performed by the OSPF designated router?**

-   summarizing routes between areas
-   **dissemination of LSAs**
-   redistribution of external routes into OSPF
-   maintaining the link-state database

**Explanation:** OSPF designated routers are elected on multiaccess networks to disseminate LSAs to other OSPF routers. By having a single router disseminate LSAs, the exchanging of LSAs is more efficient.

**109. What technology will allow containers in different physical servers to communicate?**

-   an underlay network
-   **an overlay network**
-   a vSwitch
-   container bridging

**110. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to a collector and aggregator of network telemetry data that uses advanced security analytics to automatically detect threats that infiltrate a network by both inside and outside intruders?**

-   Next-Generation Intrusion Prevention System (NGIPS)
-   Firepower Management Center (FMC)
-   Next-Generation Firewall (NGFW)
-   **Stealthwatch**

**111. Which Cisco security architectural framework helps design secure solutions for the various places in the network (PINs)?**

-   Cisco ENFV
-   Cisco NGFW
-   **Cisco SAFE**
-   Cisco DNA

**Explanation:** Cisco developed the Cisco SAFE security architecture to help design secure solutions for various places in the network (PINs) such as: the branch, campus, data center, edge, cloud, and WAN.

**112. Which term is used to describe a mapping of one or more VLANs into a single STP tree using MST technology?**

-   domain
-   **instance**
-   container
-   region

**113. How do WLCs in a mobility group identify each other?**

-   by exchanging hello messages
-   **by maintaining a list of MAC addresses and the mobility group name**
-   by querying the group root WLC
-   by sharing a database among WLCs

**114. Refer to the exhibit. Considering the route map configuration for BGP, which statement describes the condition for a network prefix to match the route map TEST ?**  
![](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22316%22%20height=%2286%22%3E%3C/svg%3E)

-   The network prefix needs to match both ACL1 and ACL2 independently of the processing action.
-   If the processing action is permit, the network prefix needs to match either ACL1 or ACL2.
-   **The network prefix needs to match either ACL1 or ACL2 independently of the processing action.**
-   If the processing action is deny, the network prefix needs to match both ACL1 and ACL2.

**Explanation:** In route map configuration, if there are multiple variables (ACLs, prefix lists, tags, and so on) configured for a specific route map sequence, only one variable must match for the prefix to qualify. The Boolean logic uses an OR operator for this configuration. The processing action is performed only after a match occurs.

**115. Multiple paths exist in the BGP table. Assuming the weights are the same, what will the next determining factor be?**

-   lowest origin type
-   **highest local preference**
-   locally originated
-   lowest MED
-   shortest AS_Path

**116. What are three features of a GRE tunnel? (Choose three.)**

-   uses RSA signatures to authenticate peers
-   **creates nonsecure tunnels between remote sites**
-   supports hosts as GRE tunnel endpoints by installing Cisco VPN client software
-   **transports multiple Layer 3 protocols**
-   **creates additional packet overhead**
-   provides encryption to keep VPN traffic confidential

**117. Refer to the exhibit. Based on the command output shown, what is the status of the EtherChannel?**  
![](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22651%22%20height=%22286%22%3E%3C/svg%3E)

-   The EtherChannel is dynamic and is using ports Fa0/10 and Fa0/11 as passive ports.
-   The EtherChannel is partially functional as indicated by the P flags for the FastEthernet ports.
-   **The EtherChannel is in use and functional as indicated by the SU and P flags in the command output.**
-   The EtherChannel is down as evidenced by the protocol field being empty.

**Explanation:** The command output shows the port channel as SU, which means Layer 2 and in use; and the FastEthernet 0/10 and 0/11 interfaces are bundled in port-channel as indicated by the P flag. Configuring the EtherChannel using the channel-group 1 mode on command will cause the Protocol field in the command output to be empty.

**118. Which three options must match in order to establish an EtherChannel between two directly connected switches? (Choose three.)**

-   port numbers that are used for the EtherChannel
-   **VLAN memberships of the interfaces that are used for EtherChannel**
-   domain names on the switches
-   **speed of the interfaces that are used for EtherChannel**
-   **duplex settings of the interfaces that are used for EtherChannel**
-   port security settings on the interfaces that used for EtherChannel

**Explanation:** Speed and duplex settings must match for all interfaces in an EtherChannel. All interfaces in the EtherChannel must be in the same VLAN if the ports are not configured as trunks. Any ports may be used to establish an EtherChannel. Domain names and port security settings are not relevant to EtherChannel.

**119. Refer to the exhibit. On the basis of the information presented, which two IP SLA related statements are true? (Choose two.)**  
![](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22726%22%20height=%22423%22%3E%3C/svg%3E)

-   **IP SLA 99 will run forever unless explicitly disabled.**
-   IP SLA 99 is measuring jitter.
-   IP SLA 99 is configured with the type dns target-addr 192.168.2.1 command.
-   IP SLA 99 is sending echo requests from IP address 192.168.2.1.
-   IP SLA 99 is scheduled to begin in 2 hours.
-   **IP SLA 99 is sending echo requests every 10 seconds.**

**Explanation:** From the output, the IP SLA is configured to perform icmp-echo, the target device is 192.168.2.1, and the icmp-echo requests are sent every 10 seconds. “Start Time already passed” indicates that the operation has started. The “Life” parameter indicates that the setting is “Forever”.

**120. Match the configuration management tool with the component terminology.**  
![](https://itexamanswers.net/wp-content/uploads/2021/04/answer-5-1618225870.2189-1.jpg?ezimgfmt=rs:734x527/rscb2/ng:webp/ngcb2)

-   pillars and grains : SaltStack
-   playbooks and plays : Ansible
-   modules and manifests : Puppet
-   cookbooks and recipes : Chef

**121. Which three statements describe the characteristics of the Cisco hierarchical network design model? (Choose three.)**

-   The core layer is commonly implemented as a star topology.
-   **The distribution layer is responsible for route summarization and isolating failures from the core.**
-   **The access layer provides a means of connecting end devices to the network**
-   **Two goals of the core layer are high availability and maximizing throughput.**
-   Route summarization is not necessary at the core and distribution layers.
-   The distribution layer distributes network traffic directly to end users.

**122. A network administrator has configured a Cisco router with the ip flow-export destination 205.168.1.3 2055 command . What are two results of the issued command? (Choose two.)**

-   It sets the NetFlow cache for device 205.168.1.3 to 2055 megabytes.
-   **It sends the NetFlow data to the host 205.168.1.3.**
-   **It uses UDP port 2055 to capture the traffic**
-   It uses TCP port 2055 to capture the traffic.
-   It captures the traffic exiting towards the device 205.168.1.3.

**123. An administrator is troubleshooting an 802.11i WLAN which consists of 5 APs and one WLC. The administrator is using a WCS to manage the APs and WLC. The administrator finds that though the WLC has been configured correctly, the Clean Air Zone of impact is not visible for the WLC. Which issue could be causing the problem?**

-   **Some channels used by APs are heavily saturated.**
-   Firmware on the WLC is likely the cause.
-   The wrong software version is on the WLC.
-   The channel has an air quality value of 100.

**124. A network administrator is designing the wireless network for a law office. The security policy requires that access to the wireless network must be authenticated with the credentials of employees. The administrator decides to use the WPA2 Enterprise authentication method. Which server is a requirement to deploy WPA2 Enterprise?**

-   **RADIUS**
-   HTTPS
-   TFTP
-   IEEE 802.1x

**125. Refer to the exhibit. A network administrator is configuring an EtherChannel link between two switches, SW1 and SW2. Which statement describes the effect after the commands are issued on SW1 and SW2?**  
![](https://itexamanswers.net/wp-content/uploads/2021/04/answer-2-1618225987.8678.jpg?ezimgfmt=rs:658x315/rscb2/ng:webp/ngcb2)

-   The EtherChannel is established without negotiation
-   **The EtherChannel fails to establish.**
-   The EtherChannel is established after SW2 initiates the link request.
-   The EtherChannel is established after SW1 initiates the link request.

**Explanation:** The interfaces GigabitEthernet 0/1 and GigabitEthernet 0/2 are configured “on” for the EtherChannel link. This mode forces the interface to channel without PAgP or LACP. The EtherChannel will be established only if the other side is also set to “on”. However, the mode on SW2 side is set to PAgP desirable. Thus the EtherChannel link will not be established.

**126. Refer to the exhibit. A network administrator issues the `show bgp ipv4 unicast begin Network` command to check the routes in the BGP table. What does the symbol ? at the end of a route indicate?**  
![](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22815%22%20height=%22294%22%3E%3C/svg%3E)

-   The route is learned through a static route.
-   The route is originated from a connected network to the router.
-   **The route is redistributed into BGP.**
-   The route is the best route for the network prefix

**Explanation:** The origin is a well-known mandatory BGP path attribute used in the BGP best-path algorithm. A value of i represents an IGP, e indicates EGP, and ? indicates a route that was redistributed into BGP.

**127. Which component of the Cisco SD-Access Architecture provides policy-based network segmentation and mobility for wired and wireless hosts?**

-   network control platform
-   **overlay network**
-   underlay network
-   DNA Center

**Explanation:** The SD-Access fabric is the overlay network, and it provides policy-based network segmentation, host mobility for wired and wireless hosts, and enhanced security beyond the normal switching and routing capabilities of a traditional network.

**128. Refer to the exhibit. Router R6 has sent a join message to router R4 requesting multicast traffic for users in the multicast group 224.1.1.1. How will the multicast traffic that is sent from the multicast server SRC through the R1-R3-R5 path be handled at router R6?**  
![](https://itexamanswers.net/wp-content/uploads/2021/04/i351147v6n1_351147-1618091234.0927.jpg?ezimgfmt=rs:609x549/rscb2/ng:webp/ngcb2)

-   The multicast traffic will be forwarded to all users in the multicast group 224.1.1.1.
-   The multicast traffic will be sent to switch SW1, which will drop the traffic.
-   **The multicast traffic will be dropped.**
-   The multicast traffic will be sent back to the rendezvous point (RP) through the R4-R2-R1 path.

**129. An ABR in a multiarea OSPF network receives LSAs from its neighbor that identify the neighbor as an ASBR with learned external networks from the Internet . Which LSA type would the ABR send to other areas to identify the ASBR , so that internal traffic that is destined for the Internet will be sent through the ASBR?**

-   LSA type 1
-   LSA type 2
-   LSA type 3
-   **LSA type 4**
-   LSA type 5

**130. A network engineer examining the operation of EIGRP on a router notices that one particular route is in an active state. What can the engineer determine about this route?**

-   Data packets to be sent to the specified network will be forwarded on this route.
-   The Diffusing Update Algorithm has determined a successor and a feasible successor for this route.
-   The EIGRP processes are still calculating the administrative distance for this route.
-   **EIGRP query messages are being sent to other routers requesting paths to this network.**

**131. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to a cloud delivered DNS service, constantly updated with threat information, that provides the first line of defense before an IP connection is established or a file is downloaded by blocking requests to malicious internet destinations?**

-   AnyConnect
-   Email Security Appliance (ESA)
-   Web Security Appliance (WSA)
-   **Umbrella**

**132. A network administrator is setting up the wireless network in a small office. The administrator wants to choose a wireless protocol standard that takes advantage of 5 GHz throughput but is also compatible with a few existing devices that operate at 2.4 GHz. Which wireless standard should the administrator deploy?**

-   802.11ac
-   **802.11n**
-   802.11a
-   802.11b
-   802.11g

**Explanation:** 802.11n operates at both 2.4 GHz and 5 GHz and is backward compatible with 802.11b and 802.11g. 802.11b and 802.11g operate at 2.4 GHz only. 802.11a and 802.11ac operate at 5 GHz only.

**133. Refer to the exhibit. Which routing protocol would likely be used to distribute routes between these routers?**  
![](https://itexamanswers.net/wp-content/uploads/2021/04/i278743v1n1_BGP3-1618088964.0818.jpg?ezimgfmt=rs:391x316/rscb2/ng:webp/ngcb2)

-   RIP
-   EIGRP
-   **BGP**
-   OSPF

**134. Match the IGMP message type with its value field and description. (Not all options will apply).**  
![](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22872%22%20height=%22854%22%3E%3C/svg%3E)

-   Type value 0x12 is used by receivers for backwards compatability with IGMPv1.  
    – Version 1 membership report
-   Type value 0x16 is used by receivers to join a multicast group.  
    – Version 2 membership report (0x16)
-   Type value 0x11 is used to leave a group message to the group of addresses the receiver requested to leave.  
    – General membership query (0x11)
-   Type value 0x17 is used by receivers to indicate they want to stop receiving any multicast traffic for the group joined.  
    – Version 2 leave group (0x17)

**135. What are three characteristics of a VLAN access port? (Choose three.)**

-   **A switch port can become an access port through static or dynamic configuration.**
-   The VLAN that the access port is assigned to will be automatically deleted if it does not exist in the VLAN database of the switch.
-   An access port should have the 802.1Q encapsulation associated with it.
-   **An access port is created with the switchport mode access command and then associated with a VLAN with the switchport access vlan command.**
-   **An access port is associated with a single VLAN.**
-   An access port created with the switchport mode access command will send DTP frames by default.

**136. Which function is the responsibility of the NFV element manager in the ETSI NFV architectural framework?**

-   collecting performance measurements and fault information
-   providing life cycle management of all NFVI resources
-   **performing all FCAPS functions for VNFs**
-   creating end-to-end network services over multiple VNFs

**Explanation:** Element managers (EMs), also known as element management systems (EMSs), are responsible for the functional management of VNFs; in other words, they perform fault, configuration, accounting, performance, and security (FCAPS)  
functions for VNFs. A single EM can manage one or multiple VNFs, and an EM can also be a VNF.

**137. Refer to the exhibit. A network administrator is viewing the output from the command show ip nat translations . Which statement correctly describes the NAT translation that is occurring on router RT2?​**  
![](https://itexamanswers.net/wp-content/uploads/2021/04/show-ip-nat-translations-1618374959.0557-1.png?ezimgfmt=rs:674x340/rscb2/ng:webp/ngcb2)

-   The traffic from a source IPv4 address of 192.0.2.88 is being translated by router RT2 to reach a destination IPv4 address of 192.168.254.253.
-   The traffic from a source IPv4 public address that originates traffic on the internet would be able to reach private internal IPv4 addresses​.
-   The traffic from a source IPv4 address of 192.168.2.20 is being translated by router RT2 to reach a destination IPv4 address of 192.0.2.254.
-   **The traffic from a source IPv4 address of 192.168.254.253 is being translated to 192.0.2.88 by means of static NAT.**

**Explanation:** Because no outside local or outside global address is referenced, the traffic from a source IPv4 address of 192.168.254.253 is being translated to 192.0.2.88 by using static NAT. In the output from the command **show ip nat translations**, the inside local IP address of 192.168.2.20 is being translated into an outside IP address of 192.0.2.254 so that the traffic can cross the public network. A public IPv4 device can connect to the private IPv4 device 192.168.254.253 by targeting the destination IPv4 address of 192.0.2.88.

**138. Which QoS technology provides congestion avoidance by allowing TCP traffic to be throttled before buffers become full and tail drops occur?**

-   traffic policing
-   best-effort
-   first-in, first-out
-   **weighted random early detection**

**Explanation:** The weighted random early detection (WRED) algorithm provides congestion avoidance on network interfaces by allowing TCP traffic to be throttled before buffers are exhausted. This maximizes network use and TCP-based application performance while minimizing tail drop.

**139. Which type of OSPF link-state advertisement advertises LSAs for routes that have been redistributed?**

-   type 3
-   type 2
-   **type 5**
-   type 1

**Explanation:** Type 5 LSA is External LSA which is generated by Autonomous System Boundary Router ( ASBR ). This LSA contains external route information which is redistributed in OSPF domain. Type 5 LSAs aren’t allowed in stub areas.

**140. What role does Cisco Umbrella play in the Cisco SAFE framework?**

-   It provides malware analysis and protection for organizations across the full attack continuum.
-   It detects, analyzes, and protects against both known and emerging threats for Cisco products.
-   It performs file analysis to determine whether a file is malware or not.
-   **It provides the first line of defense against threats on the internet by blocking requests to malicious internet destinations.**

**141. When comparing two absolute power values, what can a wireless engineer conclude after calculating a result of 10 dB?**

-   The value of the two power levels is the same.
-   **The power level of interest is ten times the reference value.**
-   The power level of interest is half the reference value.
-   The power level of interest is double the reference value.
-   The power level of interest is one tenth of the reference value.

**142. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to an elite team of security experts who track evolving threats across all parts of networks, cloud environments, and the web to provide a comprehensive understanding and solution for protection against these cyber threats?**

-   AnyConnect
-   **Talos**
-   Threat Grid
-   Advanced Malware Protection (AMP)

**143. A company uses APs to create multiple wireless networks. In one particular area users complain that there is no wireless connectivity. When the network engineer uses the WLC GUI to verify connectivity to the APs, one of the APs does not appear in the list. What should the engineer check first?**

-   RF conditions in the surrounding area
-   **AP connectivity to an access layer switch**
-   operation of client radios
-   interference in the surrounding area

**144. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to a tool that searches for potential network intrusion attacks by monitoring, analysis, and logging of network traffic and also provides advanced threat protection and remediation?**

-   Web Security Appliance (WSA)
-   Next-Generation Firewall (NGFW)
-   Email Security Appliance (ESA)
-   **Next-Generation Intrusion Prevention System (NGIPS)**

**Explanation:** Next-Generation Intrusion Prevention System (NGIPS): A system that passively monitors and analyzes network traffic for potential network intrusion attacks and logs the intrusion attack data for security analysis is known as an intrusion detection system (IDS). A system that provides IDSfunctions and also automatically blocks intrusion attacks is known as an intrusion prevention system (IPS).

**145. Refer to the exhibit. A network administrator is configuring MST tuning on SW1. The objective is to change the priority value of the interface Gi1/0/5 so that the interface is preferred when determining the root ports. Which value could be used in the `spanning-tree mst 0 port-priority` command to achieve this objective?**  
![Which value could be used in the spanning-tree mst 0 port-priority command to achieve this objective](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22727%22%20height=%22224%22%3E%3C/svg%3E)

-   **64**
-   160
-   192
-   224

**146. Which type of OSPF link-state advertisement is an AS external LSA?**

-   **Type 5**
-   Type 6
-   Type 4
-   Type 3

**147. A medium-sized company uses APs, WLCs, and laptops for employee workstations. An employee reports the inability to connect to the Internet. A technician verifies that other workstations can successfully connect to the Internet. What are two possible reasons for the problem? (Choose two.)**

-   A bad cable exists between the client and the WLC.
-   The AP does not have power.
-   **The workstation is out of range.**
-   **The wireless client is not configured for DHCP.**
-   A default gateway is improperly configured on the AP.

**Explanation:** When troubleshooting a single wireless client, take into consideration all the things a client needs to join and use the network including the following:  
– The client must be within RF range of an AP and requests to authenticate.  
– The client authenticates.  
– The client requests and receives an IP address.

**148. Refer to the exhibit. Spanning-tree port priorities are 128 for all interfaces. The network administrator enters the `spanning-tree vlan 1 root primary` command on S4. Which two port results are correct? (Choose two.)**  
![](https://itexamanswers.net/wp-content/uploads/2022/03/2022-03-30_162402.jpg?ezimgfmt=rs:604x473/rscb2/ng:webp/ngcb2)

-   S4 Gi0/1 becomes a root port.
-   **S1 Gi0/1 becomes a root port.**
-   S2 Gi0/1 becomes a nondesignated port.
-   **S4 Gi0/2 becomes a designated port.**
-   S3 Gi0/1 becomes a nondesignated port.

**149. Which service should be disabled on a router to prevent a malicious host from falsely responding to ARP requests with the intent to redirect the Ethernet frames?**

-   LLDP
-   CDP
-   **proxy ARP**
-   reverse ARP

**Explanation:** Proxy ARP is a technique used on a device on a network to answer ARP queries for a device on another network. This service should be disabled on a router and the correct default gateway address should be configured (manually or by DHCP) for the normal process of remote network access. CDP and LLDP are device discovery protocols. Reverse ARP is used to resolve IP addresses.

**150. Match the DTP mode with its function. (Not all options are used.)**

![CCNPv8 ENCOR (Version 8.00) - CCNP ENCOR 8 Final Exam Q150](https://itexamanswers.net/wp-content/uploads/2019/12/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-33.jpg?ezimgfmt=rs:734x469/rscb2/ng:webp/ngcb2)

**Explanation:** The dynamic auto mode makes the interface become a trunk interface if the neighboring interface is set to trunk or desirable mode. The dynamic desirable mode makes the interface actively attempt to convert the link to a trunk link. The trunk mode puts the interface into permanent trunking mode and negotiates to convert the neighboring link into a trunk link. The nonegotiate mode prevents the interface from generating DTP frames.

**151. Which type of OSPF link-state advertisement is an ASBR summary LSA?**

-   type 6
-   type 3
-   **type 4**
-   type 5

**152. What are two reasons for creating an OSPF network with multiple areas? (Choose two.)**

-   to simplify configuration
-   to ensure that an area is used to connect the network to the Internet
-   **to reduce SPF calculations**
-   to provide areas in the network for routers that are not running OSPF
-   **to reduce use of memory and processor resources**

**Explanation:** If a router is not running OSPF, it is not configurable with an OSPF area. OSPF areas have no direct relationship with the Internet. Routers that run OSPF can connect to the Internet, but multiple OSPF areas are not required for this purpose. OSPF areas help to decrease the demand for router memory and processing power by limiting OSPF protocol traffic, keeping link-state databases small, and requiring fewer SPF recalculations. Multiarea OSPF requires additional steps to configure and therefore does not simplify the configuration process.

**153. What are three types of IP packets that require process switching and cannot be forwarded by CEF in a Cisco router? (Choose three.)**

-   packets that are marked as low priority for QoS purposes
-   **packets that require extra information that is not currently known**
-   **packets that are too complex for the hardware to handle**
-   packets that are received on a routed port of a multilayer switch
-   packets that are to be sent over a VLAN 802.10 trunk link
-   **packets that are sourced or destined to the router**

**154. Match the RESTful API method to CRUD function.**  
![Match the RESTful API method to CRUD function.](data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22670%22%20height=%22426%22%3E%3C/svg%3E)

**155. Which type of OSPF link-state advertisement advertises a summary LSA for a specific ASBR?**

-   **type 4**
-   type 6
-   type 3
-   type 5

**156. A student is studying in preparation for an interview for a job in programming and network automation. What is a characteristic of Puppet ?**

-   It is a free online tool that can check the format of programmed files to verify that they have valid syntax.
-   **It is a configuration management and automation tool with a downloadable Cisco module to support Cisco devices.**
-   It is a hosted web-based repository that uses version control for storing and sharing code.
-   It is a markup programming language.

**157. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to an all-in-one web gateway that uses real-time intelligence to prevent the latest malware websites from infiltrating the network?**

-   **Web Security Appliance (WSA)**
-   Umbrella
-   Next-Generation Intrusion Prevention System (NGIPS)
-   Email Security Appliance (ESA)

**158. Match the Chef component to the description.**

![CCNPv8 ENCOR (Version 8.00) - CCNP ENCOR 8 Final Exam](https://itexamanswers.net/wp-content/uploads/2022/03/2022-03-30_103610.jpg?ezimgfmt=rs:715x377/rscb2/ng:webp/ngcb2)

CCNPv8 ENCOR (Version 8.00) – CCNP ENCOR 8 Final Exam

**159. Refer to the exhibit. Assuming both routers have IPv6 routing enabled and router R1 is configured for OSPFv3 as shown, which set of configuration commands on R2 is required to allow an OSPFv3 adjacency to form between the two routers?**  
![](https://itexamanswers.net/wp-content/uploads/2021/01/2022-03-30_213928.jpg?ezimgfmt=rs:610x478/rscb2/ng:webp/ngcb2)

R2(config)# router ospfv3 1  
R2(config)# router-id 2.2.2.2  
R2(config)# interface s0/0/0  
R2(config-if)# ipv6 address fe80::2 link-local  
R2(config-if)# ipv6 address 2001:db8:0:cafe::2/64

R2(config)# router ospfv3 1  
R2(config)# router-id 2.2.2.2  
R2(config)# interface s0/0/0  
R2(config-if)# ipv6 address fe80::1 link-local  
R2(config-if)# ipv6 address 2001:db8:0:cafe::2/64  
R2(config-if)# ospfv3 1 ipv6 area 0

R2(config)# router ospfv3 1  
R2(config)# router-id 2.2.2.2  
R2(config)# interface s0/0/0  
R2(config-if)# ipv6 address fe80::2 link-local  
R2(config-if)# ipv6 address 2001:db8:0:cafe::2/64  
R2(config-if)# ospfv3 1 ipv6 area 20

**R2(config)# router ospfv3 99**  
**R2(config)# router-id 2.2.2.2**  
**R2(config)# interface s0/0/0**  
**R2(config-if)# ipv6 address fe80::2 link-local**  
**R2(config-if)# ospfv3 1 ipv6 area 0**

**160. Cisco has created a security framework to help protect networks from ever-evolving cybersecurity threats. What is the term given to a centralized management platform that aggregates and correlates threat events, contextual information, and network device performance data?**

-   **Firepower Management Center (FMC)**
-   Next-Generation Firewall (NGFW)
-   Next-Generation Intrusion Prevention System (NGIPS)
-   Email Security Appliance (ESA)

**Explanation:** The Cisco FMC is a centralized management platform that aggregates and correlates threat events, contextual information, and network device performance data. It can be used to monitor information that Firepower security devices are reporting to each other and examine the overall activity occurring in the network.