### Topology

[![](https://itexamanswers.net/wp-content/uploads/2021/05/2021-05-09_104730.jpg?ezimgfmt=ng%3Awebp%2Fngcb2%2Frs%3Adevice%2Frscb2-1)](https://itexamanswers.net/wp-content/uploads/2021/05/2021-05-09_104730.jpg)

### Addressing Table

Device

Interface

IPv4 Address

IPv6 Address

IPv6 Link-Local

R1

G0/0/0

209.165.200.225/27

2001:db8:200::1/64

fe80::1:1

G0/0/1

10.0.10.1/24

2001:db8:100:1010::1/64

fe80::1:2

S0/1/0

10.0.13.1/24

2001:db8:100:1013::1/64

fe80::1:3

R2

G0/0/0

209.165.200.226/27

2001:db8:200::2/64

fe80::2:1

Loopback0

2.2.2.2/32

2001:db8:2222::1/128

fe80::2:3

R3

G0/0/1

10.0.11.1/24

2001:db8:100:1011::1/64

fe80::3:2

S0/1/0

10.0.13.3/24

2001:db8:100:1013::3/64

fe80::3:3

D1

G1/0/11

10.0.10.2/24

2001:db8:100:1010::2/64

fe80::d1:1

VLAN 100

10.0.100.1/24

2001:db8:100:100::1/64

fe80::d1:2

VLAN 101

10.0.101.1/24

2001:db8:100:101::1/64

fe80::d1:3

VLAN 102

10.0.102.1/24

2001:db8:100:102::1/64

fe80::d1:4

D2

G1/0/11

10.0.11.2/24

2001:db8:100:1011::2/64

fe80::d2:1

VLAN 100

10.0.100.2/24

2001:db8:100:100::2/64

fe80::d2:2

VLAN 101

10.0.101.2/24

2001:db8:100:101::2/64

fe80::d2:3

VLAN 102

10.0.102.2/24

2001:db8:100:102::2/64

fe80::d2:4

A1

VLAN 100

10.0.100.3/23

2001:db8:100:100::3/64

fe80::a1:1

PC1

NIC

10.0.100.5/24

2001:db8:100:100::5/64

EUI-64

PC2

NIC

DHCP

SLAAC

EUI-64

PC3

NIC

DHCP

SLAAC

EUI-64

PC4

NIC

10.0.100.6/24

2001:db8:100:100::6/64

EUI-64

### Objectives

-   Part 1: Build the Network and Configure Basic Device Settings and Interface Addressing
-   Part 2: Configure the Layer 2 Network and Host Support
-   Part 3: Configure Routing Protocols
-   Part 4: Configure First-Hop Redundancy
-   Part 5: Configure Security
-   Part 6: Configure Network Management Features
-   Part 7: Cleanup

### Instructions

#### Part 1: Build the Network and Configure Basic Device Settings and Interface Addressing

In Part 1, you will set up the network topology and configure basic settings and interface addressing.

##### Step 1: Cable the network as shown in the topology.

Attach the devices as shown in the topology diagram, and cable as necessary.

##### Step 2: Configure basic settings for each device.

a. Console into each device, enter global configuration mode, and apply the basic settings. The startup configurations for each device are provided below.  
**Router R1**

hostname R1
ipv6 unicast-routing
no ip domain lookup
banner motd # R1, ENCOR Skills Assessment, Scenario 1 #
line con 0
 exec-timeout 0 0
 logging synchronous
 exit
interface g0/0/0
 ip address 209.165.200.225 255.255.255.224
 ipv6 address fe80::1:1 link-local
 ipv6 address 2001:db8:200::1/64
 no shutdown
 exit
interface g0/0/1
 ip address 10.0.10.1 255.255.255.0
 ipv6 address fe80::1:2 link-local
 ipv6 address 2001:db8:100:1010::1/64
 no shutdown
 exit
interface s0/1/0
 ip address 10.0.13.1 255.255.255.0
 ipv6 address fe80::1:3 link-local
 ipv6 address 2001:db8:100:1013::1/64
 no shutdown
 exit

**Router R2**

hostname R2
ipv6 unicast-routing
no ip domain lookup
banner motd # R2, ENCOR Skills Assessment, Scenario 1 #
line con 0
 exec-timeout 0 0
 logging synchronous
 exit
interface g0/0/0
 ip address 209.165.200.226 255.255.255.224
 ipv6 address fe80::2:1 link-local
 ipv6 address 2001:db8:200::2/64
 no shutdown
 exit
interface Loopback 0
 ip address 2.2.2.2 255.255.255.255
 ipv6 address fe80::2:3 link-local
 ipv6 address 2001:db8:2222::1/128
 no shutdown
 exit

**Router R3**

hostname R3
ipv6 unicast-routing
no ip domain lookup
banner motd # R3, ENCOR Skills Assessment, Scenario 1 #
line con 0
 exec-timeout 0 0
 logging synchronous
 exit
interface g0/0/1
 ip address 10.0.11.1 255.255.255.0
 ipv6 address fe80::3:2 link-local
 ipv6 address 2001:db8:100:1011::1/64
 no shutdown
 exit
interface s0/1/0
 ip address 10.0.13.3 255.255.255.0
 ipv6 address fe80::3:3 link-local
 ipv6 address 2001:db8:100:1010::2/64
 no shutdown
 exit

**Switch D1**

hostname D1
ip routing
ipv6 unicast-routing
no ip domain lookup
banner motd # D1, ENCOR Skills Assessment, Scenario 1 #
line con 0
 exec-timeout 0 0
 logging synchronous
 exit
vlan 100
 name Management
 exit
vlan 101
 name UserGroupA
 exit
vlan 102
 name UserGroupB
 exit
vlan 999
 name NATIVE
 exit
interface g1/0/11
 no switchport
 ip address 10.0.10.2 255.255.255.0
 ipv6 address fe80::d1:1 link-local
 ipv6 address 2001:db8:100:1010::2/64
 no shutdown
 exit
interface vlan 100
 ip address 10.0.100.1 255.255.255.0
 ipv6 address fe80::d1:2 link-local
 ipv6 address 2001:db8:100:100::1/64
 no shutdown
 exit
interface vlan 101
 ip address 10.0.101.1 255.255.255.0
 ipv6 address fe80::d1:3 link-local
 ipv6 address 2001:db8:100:101::1/64
 no shutdown
 exit
interface vlan 102
 ip address 10.0.102.1 255.255.255.0
 ipv6 address fe80::d1:4 link-local
 ipv6 address 2001:db8:100:102::1/64
 no shutdown
 exit
ip dhcp excluded-address 10.0.101.1 10.0.101.109
ip dhcp excluded-address 10.0.101.141 10.0.101.254
ip dhcp excluded-address 10.0.102.1 10.0.102.109
ip dhcp excluded-address 10.0.102.141 10.0.102.254
ip dhcp pool VLAN-101
 network 10.0.101.0 255.255.255.0
 default-router 10.0.101.254
 exit
ip dhcp pool VLAN-102
 network 10.0.102.0 255.255.255.0
 default-router 10.0.102.254
 exit
interface range g1/0/1-10, g1/0/12-24, g1/1/1-4
 shutdown
 exit

**Switch D2**

hostname D2
ip routing
ipv6 unicast-routing
no ip domain lookup
banner motd # D2, ENCOR Skills Assessment, Scenario 1 #
line con 0
 exec-timeout 0 0
 logging synchronous
 exit
vlan 100
 name Management
 exit
vlan 101
 name UserGroupA
 exit
vlan 102
 name UserGroupB
 exit 
vlan 999
 name NATIVE
 exit
interface g1/0/11
 no switchport
 ip address 10.0.11.2 255.255.255.0
 ipv6 address fe80::d1:1 link-local
 ipv6 address 2001:db8:100:1011::2/64
 no shutdown
 exit
interface vlan 100
 ip address 10.0.100.2 255.255.255.0
 ipv6 address fe80::d2:2 link-local
 ipv6 address 2001:db8:100:100::2/64
 no shutdown
 exit
interface vlan 101
 ip address 10.0.101.2 255.255.255.0
 ipv6 address fe80::d2:3 link-local
 ipv6 address 2001:db8:100:101::2/64
 no shutdown
 exit
interface vlan 102
 ip address 10.0.102.2 255.255.255.0
 ipv6 address fe80::d2:4 link-local
 ipv6 address 2001:db8:100:102::2/64
 no shutdown
 exit
ip dhcp excluded-address 10.0.101.1 10.0.101.209
ip dhcp excluded-address 10.0.101.241 10.0.101.254
ip dhcp excluded-address 10.0.102.1 10.0.102.209
ip dhcp excluded-address 10.0.102.241 10.0.102.254
ip dhcp pool VLAN-101
 network 10.0.101.0 255.255.255.0
 default-router 10.0.101.254
 exit
ip dhcp pool VLAN-102
 network 10.0.102.0 255.255.255.0
 default-router 10.0.102.254
 exit
interface range g1/0/1-10, g1/0/12-24, g1/1/1-4
 shutdown
 exit

**Switch A1**

hostname A1
no ip domain lookup
banner motd # A1, ENCOR Skills Assessment, Scenario 1 #
line con 0
 exec-timeout 0 0
 logging synchronous
 exit
vlan 100
 name Management
 exit
vlan 101
 name UserGroupA
 exit
vlan 102
 name UserGroupB
 exit
vlan 999
 name NATIVE
 exit
interface vlan 100
 ip address 10.0.100.3 255.255.255.0
 ipv6 address fe80::a1:1 link-local
 ipv6 address 2001:db8:100:100::3/64
 no shutdown
 exit
interface range f0/5-22
 shutdown
 exit

b. Save the running configuration to startup-config on all devices.  
c. Configure PC 1 and PC 4 host addressing as shown in the addressing table. Assign a default gateway address of 10.0.100.254 which will be the HSRP virtual IP address used in Part 4.

#### Part 2: Configure the Layer 2 Network and Host Support

In this part of the Skills Assessment, you will complete the Layer 2 network configuration and set up basic host support. At the end of this part, all the switches should be able to communicate. PC2 and PC3 should receive addressing from DHCP and SLAAC.

Your configuration tasks are as follows:

Task#

Task

Specification

Points

2.1

Onall switches, configure IEEE 802.1Q trunk interfaces on interconnectingswitch links

Enable 802.1Q trunk links between:

-   D1 and D2
-   D1 and A1
-   D2 and A1

6

2.2

On all switches, change the nativeVLAN on trunk links.

Use VLAN 999 as the native VLAN.

6

2.3

On all switches, enable theRapid Spanning-Tree Protocol.

Use Rapid Spanning Tree.

3

2.4

On D1 and D2, configure the appropriate RSTP root bridges based on the information in the topology diagram.  
D1 and D2 must provide backup in case of root bridge failure.

Configure D1 and D2 as root forthe appropriate VLANs with mutually supporting priorities in case of switchfailure.

2

2.5

On all switches, create LACP EtherChannels as shown in thetopology diagram.

Use the following channel numbers:

-   D1 to D2 – Port channel 12
-   D1 to A1 – Port channel 1
-   D2 to A1 – Port channel 2

3

2.6

On all switches, configure host accessports connecting to PC1, PC2, PC3, and PC4.

Configure access ports with appropriate VLAN settings as shown in the topology diagram.  
Host ports should transition immediately to forwarding state.

4

2.7

Verify IPv4 DHCP services.

PC2 and PC3 are DHCP clients and should be receiving valid IPv4 addresses.

1

2.8

Verify local LAN connectivity.

PC1 should successfully ping:

-   D1: 10.0.100.1
-   D2: 10.0.100.2
-   PC4: 10.0.100.6

PC2 should successfully ping:

-   D1: 10.0.102.1
-   D2: 10.0.102.2

PC3 should successfully ping:

-   D1: 10.0.101.1
-   D2: 10.0.101.2

PC4 should successfully ping:

-   D1: 10.0.100.1
-   D2: 10.0.100.2
-   PC1: 10.0.100.5

1

**Instructor Verification:**  
Issue **show interfaces trunk** command on D1; output should appear as below. Verify tasks 2.1, 2.2, and 2.5 on Switch D1.

D1# show interface trunk

Port        Mode             Encapsulation  Status        Native vlan
Po1         on               802.1q         trunking      999
Po12        on               802.1q         trunking      999

Port        Vlans allowed on trunk
Po1         1-4094
Po12        1-4094

Port        Vlans allowed and active in management domain
Po1         1,100-102,999
Po12        1,100-102,999

Port        Vlans in spanning tree forwarding state and not pruned
Po1         1,100-102,999
Po12        1,100-102,999

Issue **show run | include spanning-tree** command on D1; output show appear as below. Verify tasks 2.3 and 2.4 on Switch D1.

D1# show run | include spanning-tree
spanning-tree mode rapid-pvst
spanning-tree extend system-id
spanning-tree vlan 100,102 priority 24576
spanning-tree vlan 101 priority 28672
 spanning-tree portfast

Issue **show run interface g1/0/23** command on D1; output should appear as below. Verify task 2.6 on Switch D1.

D1# show run interface g1/0/23
Building configuration...

Current configuration : 115 bytes
!
interface GigabitEthernet1/0/23
 switchport access vlan 100
 switchport mode access
 spanning-tree portfast
end

Issue **show interfaces trunk** command on D2; output should appear as below. Verify task 2.5 on Switch D2.

D2# show interfaces trunk

Port        Mode             Encapsulation  Status        Native vlan
Po2         on               802.1q         trunking      999
Po12        on               802.1q         trunking      999

Port        Vlans allowed on trunk
Po2         1-4094
Po12        1-4094

Port        Vlans allowed and active in management domain
Po2         1,100-102,999
Po12        1,100-102,999

Port        Vlans in spanning tree forwarding state and not pruned
Po2         1,100-102,999
Po12        1,100-102,999

Issue **show run | include spanning-tree** command on D2; output should appear as below. Verify tasks 2.3 and 2.4 on Switch D2.

D2# show run | include spanning-tree
spanning-tree mode rapid-pvst
spanning-tree extend system-id
spanning-tree vlan 100,102 priority 28672
spanning-tree vlan 101 priority 24576
 spanning-tree portfast

Issue **show run interface g1/0/23** command on D2; output should appear as below. Verify task 2.6 on Switch D2.

D2# show run interface g1/0/23
Building configuration...

Current configuration : 115 bytes
!
interface GigabitEthernet1/0/23
 switchport access vlan 102
 switchport mode access
 spanning-tree portfast

Issue **show run interface f0/23** and show run interface f0/24 commands on A1; output should appear as below. Verify task 2.6 on Switch A1.

A1# show run interface f0/23
Building configuration...

Current configuration : 115 bytes
!
interface FastEthernet0/23
 switchport access vlan 101
 switchport mode access
 spanning-tree portfast edge
end

A1# show run interface f0/24
Building configuration...

Current configuration : 115 bytes
!
interface FastEthernet0/24
 switchport access vlan 100
 switchport mode access
 spanning-tree portfast edge
end

#### Part 3: Configure Routing Protocols

In this part, you will configure IPv4 and IPv6 routing protocols. At the end of this part, the network should be fully converged. IPv4 and IPv6 pings to the Loopback 0 interface from D1 and D2 should be successful.

**Note:** Pings from the hosts will not be successful because their default gateways are pointing to the HSRP address which will be enabled in Part 4.

Your configuration tasks are as follows:

Task#

Task

Specification

Points

3.1

On the “Company Network” (i.e.,R1, R3, D1, and D2), configure single-area OSPFv2 in area 0.

Use OSPF Process ID 4 and assign the following router-IDs:

-   R1: 0.0.4.1
-   R3: 0.0.4.3
-   D1: 0.0.4.131
-   D2: 0.0.4.132

On R1, R3, D1, and D2, advertise all directly connected networks / VLANs in Area 0.

-   On R1, do not advertise the R1 – R2 network.
-   On R1, propagate a default route. Note that the default route will be provided by BGP.

Disable OSPFv2 advertisements on:

-   D1: All interfaces except G1/0/11
-   D2: All interfaces except G1/0/11

8

3.2

On the “Company Network” (i.e.,R1, R3, D1, and D2), configure classic single-area OSPFv3 in area 0.

Use OSPF Process ID 6 and assign the following router-IDs:

-   R1: 0.0.6.1
-   R3: 0.0.6.3
-   D1: 0.0.6.131
-   D2: 0.0.6.132

On R1, R3, D1, and D2, advertise all directly connected networks / VLANs in Area 0.

-   On R1, do not advertise the R1 – R2 network.
-   On R1, propagate a default route. Note that the default route will be provided by BGP.

Disable OSPFv3 advertisements on:

-   D1: All interfaces except G1/0/11
-   D2: All interfaces except G1/0/11

8

3.3

On R2 in the “ISP Network”, configureMP-BGP.

Configure two default static routes via interface Loopback 0:

-   An IPv4 default static route.
-   An IPv6 default static route.

Configure R2 in BGP ASN 500 and use the router-id 2.2.2.2.

Configure and enable an IPv4 and IPv6 neighbor relationship with R1 in ASN 300.

In IPv4 address family, advertise:

-   The Loopback 0 IPv4 network (/32).
-   The default route (0.0.0.0/0).

In IPv6 address family, advertise:

-   The Loopback 0 IPv4 network (/128).
-   The default route (::/0).

4

3.4

On R1 in the “ISP Network”,configure MP-BGP.

Configure two static summary routes to interface Null 0:

-   A summary IPv4 route for 10.0.0.0/8.
-   A summary IPv6 route for 2001:db8:100::/48.

Configure R1 in BGP ASN 300 and use the router-id 1.1.1.1.  
Configure an IPv4 and IPv6 neighbor relationship with R2 in ASN 500.  
In IPv4 address family:

-   Disable the IPv6 neighbor relationship.
-   Enable the IPv4 neighbor relationship.
-   Advertise the 10.0.0.0/8 network.

In IPv6 address family:

-   Disable the IPv4 neighbor relationship.
-   Enable the IPv6 neighbor relationship.
-   Advertise the 2001:db8:100::/48 network.

4

**Instructor Verification:**  
Issue **show run | section ^router ospf** on R1, R3, D1, and D2; output should appear as below. Verify task 3.1 on each device.

R1# show run | section ^router ospf
router ospf 4
 router-id 0.0.4.1
 network 10.0.10.0 0.0.0.255 area 0
 network 10.0.13.0 0.0.0.255 area 0
 default-information originate

R3# show run | section ^router ospf
router ospf 4
 router-id 0.0.4.3
 network 10.0.11.0 0.0.0.255 area 0
 network 10.0.13.0 0.0.0.255 area 0

D1# show run | section ^router ospf
router ospf 4
 router-id 0.0.4.131
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
 network 10.0.10.0 0.0.0.255 area 0
 network 10.0.100.0 0.0.0.255 area 0
 network 10.0.101.0 0.0.0.255 area 0
 network 10.0.102.0 0.0.0.255 area 0

D2# show run | section ^router ospf
router ospf 4
 router-id 0.0.4.132
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
 network 10.0.11.0 0.0.0.255 area 0
 network 10.0.100.0 0.0.0.255 area 0
 network 10.0.101.0 0.0.0.255 area 0
 network 10.0.102.0 0.0.0.255 area 0

Issue **show run | section ^ipv6 router** and **show ipv6 ospf interface brief** on R1, R3, D1, and D2; output should appear as below. Verify task 3.2 on each device.

R1# show run | section ^ipv6 router
ipv6 router ospf 6
 router-id 0.0.6.1
 default-information originate
R1# show ipv6 ospf interface brief
Interface    PID   Area            Intf ID    Cost  State Nbrs F/C
Se0/1/0      6     0               7          49    P2P   1/1
Gi0/0/1      6     0               6          1     DR    1/1

R3# show run | section ^ipv6 router
ipv6 router ospf 6
 router-id 0.0.6.3
R3# show ipv6 ospf interface brief
Interface    PID   Area            Intf ID    Cost  State Nbrs F/C
Se0/1/0      6     0               7          50    P2P   1/1
Gi0/0/1      6     0               6          1     DR    1/1

D1# show run | section ^ipv6 router
ipv6 router ospf 6
 router-id 0.0.6.131
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
D1# show ipv6 ospf interface brief
Interface    PID   Area            Intf ID    Cost  State Nbrs F/C
Vl102        6     0               41         1     DR    0/0
Vl101        6     0               40         1     DR    0/0
Vl100        6     0               39         1     DR    0/0
Gi1/0/11     6     0               38         1     BDR   1/1

D2# show run | section ^ipv6 router
ipv6 router ospf 6
 router-id 0.0.6.132
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
D2# show ipv6 ospf interface brief
Interface    PID   Area            Intf ID    Cost  State Nbrs F/C
Vl102        6     0               41         1     DR    0/0
Vl101        6     0               40         1     DR    0/0
Vl100        6     0               39         1     DR    0/0
Gi1/0/11     6     0               38         1     BDR   1/1

Issue **show run | section bgp** and **show run | include route** on R2; output should appear as below. Verify task 3.3.

R2# show run | section router bgp
router bgp 500
 bgp router-id 2.2.2.2
 bgp log-neighbor-changes
 neighbor 2001:DB8:200::1 remote-as 300
 neighbor 209.165.200.225 remote-as 300
 !
 address-family ipv4
  network 0.0.0.0
  network 2.2.2.2 mask 255.255.255.255
  no neighbor 2001:DB8:200::1 activate
  neighbor 209.165.200.225 activate
 exit-address-family
 !
 address-family ipv6
  network ::/0
  network 2001:DB8:2222::/128
  neighbor 2001:DB8:200::1 activate
 exit-address-family

R2# show run | include route
router bgp 500
 bgp route-id 2.2.2.2
ip route 0.0.0.0 0.0.0.0 Loopback0
ipv6 route ::/0 Loopback0

Issue **show run | section bgp** on R1; output should appear as below. Verify task 3.4.

R1# show run | section bgp
router bgp 300
 bgp router-id 1.1.1.1
 bgp log-neighbor-changes
 neighbor 2001:DB8:200::2 remote-as 500
 neighbor 209.165.200.226 remote-as 500
 !
 address-family ipv4
  network 10.0.0.0
  no neighbor 2001:DB8:200::2 activate
  neighbor 209.165.200.226 activate
 exit-address-family
 !
 address-family ipv6
  network 2001:DB8:100::/48
  neighbor 2001:DB8:200::2 activate
 exit-address-family

**Verify Routing Tables:**  
Issue **show ip route | include O|B** on R1; output should appear as below. Verify that OSPF and BGP for IPv4 are working properly.

R1# show ip route | include O|B
Codes: L - local, C - connected, S - static, R - RIP, M - mobile, B - BGP
       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area
       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2
       E1 - OSPF external type 1, E2 - OSPF external type 2
       o - ODR, P - periodic downloaded static route, H - NHRP, l - LISP
B*    0.0.0.0/0 [20/0] via 209.165.200.2, 01:51:16
B        2.2.2.2 [20/0] via 209.165.200.2, 01:51:16
O        10.0.11.0/24 [110/50] via 10.0.13.3, 01:24:41, Serial0/1/0
O        10.0.100.0/24 [110/2] via 10.0.10.2, 01:49:44, GigabitEthernet0/0/1
O        10.0.101.0/24 [110/2] via 10.0.10.2, 01:49:44, GigabitEthernet0/0/1
O        10.0.102.0/24 [110/2] via 10.0.10.2, 01:49:44, GigabitEthernet0/0/1

Issue **show ipv6 route** command on R1; should appear as below. Verify that OSPFv3 for IPv6 is working properly.

R1# show ipv6 route
IPv6 Routing Table - default - 13 entries
Codes: C - Connected, L - Local, S - Static, U - Per-user Static route
       B - BGP, R - RIP, H - NHRP, I1 - ISIS L1
       I2 - ISIS L2, IA - ISIS interarea, IS - ISIS summary, D - EIGRP
       EX - EIGRP external, ND - ND Default, NDp - ND Prefix, DCE - Destination
       NDr - Redirect, RL - RPL, O - OSPF Intra, OI - OSPF Inter
       OE1 - OSPF ext 1, OE2 - OSPF ext 2, ON1 - OSPF NSSA ext 1
       ON2 - OSPF NSSA ext 2, a - Application
B   ::/0 [20/0]
     via FE80::2:1, GigabitEthernet0/0/0
S   2001:DB8:100::/48 [1/0]
     via Null0, directly connected
O   2001:DB8:100:100::/64 [110/2]
     via FE80::D1:1, GigabitEthernet0/0/1
O   2001:DB8:100:101::/64 [110/2]
     via FE80::D1:1, GigabitEthernet0/0/1
O   2001:DB8:100:102::/64 [110/2]
     via FE80::D1:1, GigabitEthernet0/0/1
C   2001:DB8:100:1010::/64 [0/0]
     via GigabitEthernet0/0/1, directly connected
L   2001:DB8:100:1010::1/128 [0/0]
     via GigabitEthernet0/0/1, receive
O   2001:DB8:100:1011::/64 [110/50]
     via FE80::3:3, Serial0/1/0
C   2001:DB8:100:1013::/64 [0/0]
     via Serial0/1/0, directly connected
L   2001:DB8:100:1013::1/128 [0/0]
     via Serial0/1/0, receive
C   2001:DB8:200::/64 [0/0]
     via GigabitEthernet0/0/0, directly connected
L   2001:DB8:200::1/128 [0/0]
     via GigabitEthernet0/0/0, receive
L   FF00::/8 [0/0]
     via Null0, receive

Issue **show ip route ospf | begin Gateway** command on R3; output should appear as below. Verify that OSPF for IPv4 is working properly.

R3# show ip route ospf | begin Gateway
Gateway of last resort is 10.0.13.1 to network 0.0.0.0

O*E2  0.0.0.0/0 [110/1] via 10.0.13.1, 01:56:36, Serial0/1/0
      10.0.0.0/8 is variably subnetted, 8 subnets, 2 masks
O        10.0.10.0/24 [110/51] via 10.0.13.1, 01:56:47, Serial0/1/0
O        10.0.100.0/24 [110/2] via 10.0.11.2, 01:30:02, GigabitEthernet0/0/1
O        10.0.101.0/24 [110/2] via 10.0.11.2, 01:30:02, GigabitEthernet0/0/1
O        10.0.102.0/24 [110/2] via 10.0.11.2, 01:30:02, GigabitEthernet0/0/1

Issue the **show ipv6 route ospf** command on R3; output should appear as below. Verify that OSPFv3 for IPv6 is working properly.

R3# show ipv6 route ospf
IPv6 Routing Table - default - 10 entries
Codes: C - Connected, L - Local, S - Static, U - Per-user Static route
       B - BGP, R - RIP, H - NHRP, I1 - ISIS L1
       I2 - ISIS L2, IA - ISIS interarea, IS - ISIS summary, D - EIGRP
       EX - EIGRP external, ND - ND Default, NDp - ND Prefix, DCE - Destination
       NDr - Redirect, RL - RPL, O - OSPF Intra, OI - OSPF Inter
       OE1 - OSPF ext 1, OE2 - OSPF ext 2, ON1 - OSPF NSSA ext 1
       ON2 - OSPF NSSA ext 2, a - Application
OE2 ::/0 [110/1], tag 6
     via FE80::1:3, Serial0/1/0
O   2001:DB8:100:100::/64 [110/2]
     via FE80::D1:1, GigabitEthernet0/0/1
O   2001:DB8:100:101::/64 [110/2]
     via FE80::D1:1, GigabitEthernet0/0/1
O   2001:DB8:100:102::/64 [110/2]
     via FE80::D1:1, GigabitEthernet0/0/1
O   2001:DB8:100:1013::/64 [110/99]
     via FE80::1:3, Serial0/1/0

#### Part 4: Configure First Hop Redundancy

In this part, you will configure HSRP version 2 to provide first-hop redundancy for hosts in the “Company Network”.

Your configuration tasks are as follows:

Task#

Task

Specification

Points

4.1

On D1, create IP SLAs that test the reachability of R1interface G0/0/1.

Create two IP SLAs.

-   Use SLA number **4** for IPv4.
-   Use SLA number **6** for IPv6.

The IP SLAs will test availability of R1 G0/0/1 interface every 5 seconds.  
Schedule the SLA for immediate implementation with no end time.  
Create an IP SLA object for IP SLA 4 and one for IP SLA 6.

-   Use track number **4** for IP SLA 4.
-   Use track number **6** for IP SLA 6.

The tracked objects should notify D1 if the IP SLA state changes from down to up after 10 seconds, or from up to down after 15 seconds.

2

4.2

On D2, create IP SLAs that testthe reachability of R3 interface G0/0/1.

Create two IP SLAs.

-   Use SLA number **4** for IPv4.
-   Use SLA number **6** for IPv6.

The IP SLAs will test availability of R3 G0/0/1 interface every 5 seconds.  
Schedule the SLA for immediate implementation with no end time.  
Create an IP SLA object for IP SLA 4 and one for IP SLA 6.

-   Use track number **4** for IP SLA 4.
-   Use track number **6** for IP SLA 6.

The tracked objects should notify D1 if the IP SLA state changes from down to up after 10 seconds, or from up to down after 15 seconds.

2

4.3

On D1, configure HSRPv2.

D1 is the primary router for VLANs 100 and 102; therefore, their priority will also be changed to 150.  
Configure HSRP version 2.  
Configure IPv4 HSRP group **104** for VLAN 100:

-   Assign the virtual IP address **10.0.100.254**.
-   Set the group priority to **150**.
-   Enable preemption.
-   Track object 4 and decrement by 60.

Configure IPv4 HSRP group **114** for VLAN 101:

-   Assign the virtual IP address **10.0.101.254**.
-   Enable preemption.
-   Track object 4 to decrement by 60.

Configure IPv4 HSRP group **124** for VLAN 102:

-   Assign the virtual IP address **10.0.102.254**.
-   Set the group priority to **150**.
-   Enable preemption.
-   Track object 4 to decrement by 60.

Configure IPv6 HSRP group **106** for VLAN 100:

-   Assign the virtual IP address using **ipv6 autoconfig**.
-   Set the group priority to **150**.
-   Enable preemption.
-   Track object 6 and decrement by 60.

Configure IPv6 HSRP group **116** for VLAN 101:

-   Assign the virtual IP address using **ipv6 autoconfig**.
-   Enable preemption.
-   Track object 6 and decrement by 60.

Configure IPv6 HSRP group **126** for VLAN 102:

-   Assign the virtual IP address using **ipv6 autoconfig**.
-   Set the group priority to **150**.
-   Enable preemption.
-   Track object 6 and decrement by 60.

8

On D2, configure HSRPv2.

D2 is the primary router for VLAN 101; therefore, the priority will also be changed to 150.  
Configure HSRP version 2.  
Configure IPv4 HSRP group **104** for VLAN 100:

-   Assign the virtual IP address **10.0.100.254**.
-   Enable preemption.
-   Track object 4 and decrement by 60.

Configure IPv4 HSRP group **114** for VLAN 101:

-   Assign the virtual IP address **10.0.101.254**.
-   Set the group priority to **150**.
-   Enable preemption.
-   Track object 4 to decrement by 60.

Configure IPv4 HSRP group **124** for VLAN 102:

-   Assign the virtual IP address **10.0.102.254**.
-   Enable preemption.
-   Track object 4 to decrement by 60.

Configure IPv6 HSRP group **106** for VLAN 100:

-   Assign the virtual IP address using **ipv6 autoconfig**.
-   Enable preemption.
-   Track object 6 and decrement by 60.

Configure IPv6 HSRP group **116** for VLAN 101:

-   Assign the virtual IP address using **ipv6 autoconfig**.
-   Set the group priority to 150.
-   Enable preemption.
-   Track object 6 and decrement by 60.

Configure IPv6 HSRP group **126** for VLAN 102:

-   Assign the virtual IP address using **ipv6 autoconfig**.
-   Enable preemption.
-   Track object 6 and decrement by 60.

**Instructor Verification:**  
Issue the **show run | section ip sla** command on D1; output should appear as below. Verify task 4.1 and bullet 3 of task 4.3 for Switch D1.

D1# show run | section ip sla
track 4 ip sla 4
 delay down 10 up 15
track 6 ip sla 6
 delay down 10 up 15
ip sla 4
 icmp-echo 10.0.10.1
 frequency 5
ip sla schedule 4 life forever start-time now
ip sla 6
 icmp-echo 2001:DB8:100:1010::1
 frequency 5
ip sla schedule 6 life forever start-time now

Issue the **show standby brief** command on D1; output should appear as below. Verify task 4.3.

D1# show standby brief
                     P indicates configured to preempt.
                     |
Interface   Grp  Pri P State   Active          Standby         Virtual IP
Vl100       104  150 P Active  local           10.0.100.2      10.0.100.254
Vl100       106  150 P Active  local           FE80::D2:2      FE80::5:73FF:FEA0:6A
Vl101       114  100 P Standby 10.0.101.2      local           10.0.101.254
Vl101       116  100 P Standby FE80::D2:3      local           FE80::5:73FF:FEA0:74
Vl102       124  150 P Active  local           10.0.102.2      10.0.102.254
Vl102       126  150 P Active  local           FE80::D2:4      FE80::5:73FF:FEA0:7E

Issue the **show run | section ip sla** command on D2; output should appear as below. Verify task 4.2 and bullet 3 of task 4.3 for Switch D2.

D2# show run | section ip sla
track 4 ip sla 4
 delay down 10 up 15
track 6 ip sla 6
 delay down 10 up 15
ip sla 4
 icmp-echo 10.0.11.1
 frequency 5
ip sla schedule 4 life forever start-time now
ip sla 6
 icmp-echo 2001:DB8:100:1011::1
 frequency 5
ip sla schedule 6 life forever start-time now

#### Part 5: Security

In this part you will configure various security mechanisms on the devices in the topology.

Your configuration tasks are as follows:

Task#

Task

Specification

Points

5.1

On all devices, secure privileged EXEC using the SCRYPTencryption algorithm.

Password: **cisco12345cisco**

3

5.2

On all devices, create a localuser and secure it using the SCRYPT encryption algorithm.

SCRYPT encrypted account specifics:

-   Local user name: **sadmin**
-   Privilege level **15**
-   Password: **cisco12345cisco**

3

5.3

On all devices (except R2), enableAAA.

Enable AAA.

2

5.4

On all devices (except R2),configure the RADIUS server specifics.

RADIUS server specifics:

-   RADIUS server IP address is 10.0.100.6.
-   RADIUS server UDP ports 1812 and 1813.
-   Password: **$trongPass**

2

5.5

On all devices (except R2),configure the AAA authenticationmethod list.

AAA authentication specifics:

-   Use the default method list
-   Validate against the RADIUS server group
-   Otherwise, use the local database.

2

5.6

Verify the AAA service on alldevices (except R2).

Log out and log in to all devices (except R2) using the username **raduser** and the password **upass123**.  
You should be successful.

2

**Instructor Verification:**  
Issue **show run | include secret** on each device; output should appear as below. Verify task 5.1 and 5.2.

R1# show run | include secret
enable secret 9 $9$0C3pnVdgrnhnY9$uzGA.WZfcLg5IhuyJu22mIf.YyZ/83VgqbO3rXBDuwo
username sadmin privilege 15 secret 9 $9$XCO4pzqbRT.3EP$ymouLOQI5/o0FOkYDtA1ztejFra67MnkJJ5Y3bhyQe6

Issue **show run aaa | exclude !** on all devices except R2; output should appear as below. Verify tasks 5.3, 5.4 and 5.5.

R1# show run aaa | exclude !
aaa authentication login default group radius local
username sadmin privilege 15 secret 9 $9$XCO4pzqbRT.3EP$ymouLOQI5/o0FOkYDtA1ztejFra67MnkJJ5Y3bhyQe6
radius server RADIUS
 address ipv4 10.0.100.6 auth-port 1812 acct-port 1813
 key $trongPass
aaa new-model
aaa session-id common

Telnet from PC3 in the topology to any device other than R2. Log in using the username **raduser** and password **upass123**. Successful login verify that AAA is working and task 5.6.

#### Part 6: Configure Network Management Features

In this part, you will configure various network management features.

Your configuration tasks are as follows:

Task#

Task

Specification

Points

6.1

On all devices, set the local clock to the current UTC time.

Setthe local clock to the current UTC time.

3

6.2

Configure R2 as an NTP master.

Configure R2 as an NTP master at stratum level 3.

1

6.3

Configure NTP on R1, R3, D1, D2,and A1.

Configure NTP as follows:

-   R1 must synchronize with R2.
-   R3, D1, and A1 to synchronize time with R1.
-   D2 to synchronize time with R3.

5

6.4

Configure Syslog on all devicesexcept R2.

Syslogs should be sent to PC1 at 10.0.100.5 at the WARNING level.

5

6.5

Configure SNMPv2c on all devicesexcept R2.

SNMPv2 specifics:

-   Only Read-Only SNMP will be used.
-   Limit SNMP access to PC1’s IP address.
-   Configure the SNMP contact value to your name.
-   Set the community string to **ENCORSA**.
-   On R3, D1, and D2, enable traps config and ospf to be sent.
-   On R1, enable traps bgp, config, and ospf to be sent.
-   On A1, enable traps config to be sent.

10

**Instructor Verification:**  
Verify the current UTC time.  
Issue the show clock command on R2; output should indicate the correct current UTC time. This verifies task 6.1 on R2.  
Issue the show run | include ntp command on R2; output should appear as below. This verifies task 6.2.

R2# **show run | include ntp**
ntp master 3

Issue the show ntp status | include stratum command on R1; output should appear as below. This verifies task 6.3 on router R1.

R1# **show ntp status | include stratum**
Clock is synchronized, stratum 4, reference is 2.2.2.2

Issue the show ntp status | include stratum command on R3, D1, D2, and A1. Output should appear as below. This verifies task 6.3 on these devices.

A1# **show ntp status | include stratum**
Clock is synchronized, stratum 5, reference is 10.0.10.1

Issue the show run | include logging command on all devices except R2; output should appear as below. This verifies task 6.4 on these devices.

R1# **show run | include logging**
logging trap warnings
logging host 10.0.100.5
 logging synchronous

Issue the show ip access-list SNMP-NMS command on all devices except R2; output should appear as below. This confirms task 6.5.

D1# **show ip access-list SNMP-NMS**
Standard IP access list SNMP-NMS
    10 permit 10.0.100.5

Issue the show run | include snmp command on all devices except R2; output should appear as below. This verifies bullet 2 of task 6.5.

R1# **show run | include snmp**
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server enable traps bgp
snmp-server host 10.0.100.5 version 2c ENCORSA

R3# **show run | include snmp**
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA

D1# **show run | include snmp**
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA

D2# **show run | include snmp**
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA

A1# **show run | include snmp**
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA

#### Part 7: Cleanup

**NOTE:** DO NOT PROCEED WITH CLEANUP UNTIL YOUR INSTRUCTOR HAS GRADED YOUR SKILLS ASSESSMENT AND HAS INFORMED YOU THAT YOU MAY BEGIN CLEANUP.

Unless directed otherwise by the instructor, restore host computer network connectivity, and then turn off power to the host computers.

Remove NVRAM configuration files (if saved) and vlan databases from all devices before turning them off or reloading them.

### Device Configurations (Answers)

**Listed below are the configuration commands used to create the skills assessment**

#### Part 2 Commands

##### Switch D1

interface range g1/0/1-4
 switchport mode trunk
 switchport trunk native vlan 999
 channel-group 12 mode active
 no shutdown
 exit
interface range g1/0/5-6
 switchport mode trunk
 switchport trunk native vlan 999
 channel-group 1 mode active
 no shutdown
 exit
spanning-tree mode rapid-pvst
spanning-tree vlan 100,102 root primary
spanning-tree vlan 101 root secondary
interface g1/0/23
 switchport mode access
 switchport access vlan 100
 spanning-tree portfast
 no shutdown
 exit
end

##### Switch D2

interface range g1/0/1-4
 switchport mode trunk
 switchport trunk native vlan 999
 channel-group 12 mode active
 no shutdown
 exit
interface range g1/0/5-6
 switchport mode trunk
 switchport trunk native vlan 999
 channel-group 2 mode active
 no shutdown
 exit
!
spanning-tree mode rapid-pvst
spanning-tree vlan 101 root primary
spanning-tree vlan 100,102 root secondary
!
interface g1/0/23
 switchport mode access
 switchport access vlan 102
 spanning-tree portfast
 no shutdown
 exit
end

##### Switch A1

spanning-tree mode rapid-pvst
interface range f0/1-2
 switchport mode trunk
 switchport trunk native vlan 999
 channel-group 1 mode active
 no shutdown
 exit
interface range f0/3-4
 switchport mode trunk
 switchport trunk native vlan 999
 channel-group 2 mode active
 no shutdown
 exit
interface f0/23
 switchport mode access
 switchport access vlan 101
 spanning-tree portfast
 no shutdown
 exit
interface f0/24
 switchport mode access
 switchport access vlan 100
 spanning-tree portfast
 no shutdown
 exit
end

#### Part 3 Commands (Routing Protocols)

##### Router R1

router ospf 4
 router-id 0.0.4.1
 network 10.0.10.0 0.0.0.255 area 0
 network 10.0.13.0 0.0.0.255 area 0
 default-information originate
 exit
ipv6 router ospf 6
 router-id 0.0.6.1
 default-information originate
 exit
interface g0/0/1
 ipv6 ospf 6 area 0
 exit
interface s0/1/0
 ipv6 ospf 6 area 0
 exit
!
ip route 10.0.0.0 255.0.0.0 null0
ipv6 route 2001:db8:100::/48 null0
!
router bgp 300
 bgp router-id 1.1.1.1
 neighbor 209.165.200.226 remote-as 500
 neighbor 2001:db8:200::2 remote-as 500
 address-family ipv4 unicast 
  neighbor 209.165.200.226 activate
  no neighbor 2001:db8:200::2 activate
  network 10.0.0.0 mask 255.0.0.0
  exit-address-family
 address-family ipv6 unicast
  no neighbor 209.165.200.226 activate
  neighbor 2001:db8:200::2 activate
  network 2001:db8:100::/48
  exit-address-family

##### Router R2

ip route 0.0.0.0 0.0.0.0 loopback 0
ipv6 route ::/0 loopback 0
router bgp 500
 bgp router-id 2.2.2.2
 neighbor 209.165.200.225 remote-as 300
 neighbor 2001:db8:200::1 remote-as 300
 address-family ipv4
  neighbor 209.165.200.225 activate
  no neighbor 2001:db8:200::1 activate
  network 2.2.2.2 mask 255.255.255.255
  network 0.0.0.0
  exit-address-family
 address-family ipv6
  no neighbor 209.165.200.225 activate
  neighbor 2001:db8:200::1 activate
  network 2001:db8:2222::/128
  network ::/0
  exit-address-family

##### Router R3

router ospf 4
 router-id 0.0.4.3
 network 10.0.11.0 0.0.0.255 area 0
 network 10.0.13.0 0.0.0.255 area 0
 exit
ipv6 router ospf 6
 router-id 0.0.6.3
 exit
interface g0/0/1
 ipv6 ospf 6 area 0
 exit
interface s0/1/0
 ipv6 ospf 6 area 0
 exit
end

##### Switch D1

router ospf 4
 router-id 0.0.4.131
 network 10.0.100.0 0.0.0.255 area 0
 network 10.0.101.0 0.0.0.255 area 0
 network 10.0.102.0 0.0.0.255 area 0
 network 10.0.10.0 0.0.0.255 area 0
 passive-interface default
 no passive-interface g1/0/11
 exit
ipv6 router ospf 6
 router-id 0.0.6.131
 passive-interface default
 no passive-interface g1/0/11
 exit
interface g1/0/11
 ipv6 ospf 6 area 0
 exit
interface vlan 100
 ipv6 ospf 6 area 0
 exit
interface vlan 101
 ipv6 ospf 6 area 0
 exit
interface vlan 102
 ipv6 ospf 6 area 0
 exit
end

##### Switch D2

router ospf 4
 router-id 0.0.4.132
 network 10.0.100.0 0.0.0.255 area 0
 network 10.0.101.0 0.0.0.255 area 0
 network 10.0.102.0 0.0.0.255 area 0
 network 10.0.11.0 0.0.0.255 area 0
 passive-interface default
 no passive-interface g1/0/11
 exit
ipv6 router ospf 6
 router-id 0.0.6.132
 passive-interface default
 no passive-interface g1/0/11
 exit
interface g1/0/11
 ipv6 ospf 6 area 0
 exit
interface vlan 100
 ipv6 ospf 6 area 0
 exit
interface vlan 101
 ipv6 ospf 6 area 0
 exit
interface vlan 102
 ipv6 ospf 6 area 0
 exit
end

#### Part 4 Commands (FHRP/SLA)

##### Switch D1

ip sla 4
 icmp-echo 10.0.10.1
 frequency 5
 exit
ip sla 6
 icmp-echo 2001:db8:100:1010::1
 frequency 5
 exit
ip sla schedule 4 life forever start-time now
ip sla schedule 6 life-forever start-time now
track 4 ip sla 4
 delay down 10 up 15
 exit
track 6 ip sla 6
 delay down 10 up 15
 exit
interface vlan 100
 standby version 2
 standby 104 ip 10.0.100.254
 standby 104 priority 150
 standby 104 preempt
 standby 104 track 4 decrement 60
 standby 106 ipv6 autoconfig
 standby 106 priority 150
 standby 106 preempt
 standby 106 track 6 decrement 60
 exit
interface vlan 101
 standby version 2
 standby 114 ip 10.0.101.254
 standby 114 preempt
 standby 114 track 4 decrement 60
 standby 116 ipv6 autoconfig
 standby 116 preempt
 standby 116 track 6 decrement 60
 exit
interface vlan 102
 standby version 2
 standby 124 ip 10.0.102.254
 standby 124 priority 150
 standby 124 preempt
 standby 124 track 4 decrement 60
 standby 126 ipv6 autoconfig
 standby 126 priority 150
 standby 126 preempt
 standby 126 track 6 decrement 60
 exit
end

##### Switch D2

ip sla 4
 icmp-echo 10.0.11.1
 frequency
exit
ip sla 6
 icmp-echo 2001:db8:100:1011::1
 frequency
exit
ip sla schedule 4 life forever start-time now
ip sla schedule 6 life forever start-time now
track 4 ip sla 4
 delay down 10 up 15
 exit
track 6 ip sla 6
 delay down 10 up 15
 exit
interface vlan 100
 standby version 2
 standby 104 ip 10.0.100.254
 standby 104 preempt
 standby 104 track 4 decrement 60
 standby 106 ipv6 autoconfig
 standby 106 preempt
 standby 106 track 6 decrement 60
 exit
interface vlan 101
 standby version 2
 standby 114 ip 10.0.101.254
 standby 114 priority 150
 standby 114 preempt
 standby 114 track 4 decrement 60
 standby 116 ipv6 autoconfig
 standby 116 priority 150
 standby 116 preempt
 standby 116 track 6 decrement 60
 exit
interface vlan 102
 standby version 2
 standby 124 ip 10.0.102.254
 standby 124 preempt
 standby 124 track 4 decrement 60
 standby 126 ipv6 autoconfig
 standby 126 preempt
 standby 126 track 6 decrement 60
 exit
end

#### Part 5 Commands (Security)

##### All Devices:

enable algorithm-type SCRYPT secret cisco12345cisco
username sadmin privilege 15 algorithm-type SCRYPT secret cisco12345cisco

! All devices except R2:
aaa new-model
radius server RADIUS
 address ipv4 10.0.100.6 auth-port 1812 acct-port 1813
 key $trongPass
 exit
aaa authentication login default group radius local
end

#### Part 6 Commands (Net Management)

**Set local clock to UTC on all devices.**

##### Router R2:

ntp master 3
end

##### Router R1

! enable and enter password

 ntp server 2.2.2.2
 logging trap warning
 logging host 10.0.100.5
 logging on
ip access-list standard SNMP-NMS
  permit host 10.0.100.5
  exit
 snmp-server contact Cisco Student
 snmp-server community ENCORSA ro SNMP-NMS
 snmp-server host 10.0.100.5 version 2c ENCORSA
 snmp-server ifindex persist
 snmp-server enable traps bgp
 snmp-server enable traps config
 snmp-server enable traps ospf
end

##### Router R3

 ntp server 10.0.10.1
 logging trap warning
 logging host 10.0.100.5
 logging on
ip access-list standard SNMP-NMS
  permit host 10.0.100.5
  exit
 snmp-server contact Cisco Student
 snmp-server community ENCORSA ro SNMP-NMS
 snmp-server host 10.0.100.5 version 2c ENCORSA
 snmp-server ifindex persist
 snmp-server enable traps config
 snmp-server enable traps ospf
end

##### Switch D1

 ntp server 10.0.10.1
 logging trap warning
 logging host 10.0.100.5
 logging on
ip access-list standard SNMP-NMS
  permit host 10.0.100.5
  exit
 snmp-server contact Cisco Student
 snmp-server community ENCORSA ro SNMP-NMS
 snmp-server host 10.0.100.5 version 2c ENCORSA
 snmp-server ifindex persist
 snmp-server enable traps config
 snmp-server enable traps ospf
end

##### Switch D2

 ntp server 10.0.10.1
 logging trap warning
 logging host 10.0.100.5
 logging on
ip access-list standard SNMP-NMS
  permit host 10.0.100.5
  exit
 snmp-server contact Cisco Student
 snmp-server community ENCORSA ro SNMP-NMS
 snmp-server host 10.0.100.5 version 2c ENCORSA
 snmp-server enable traps config
 snmp-server enable traps ospf
end

##### Switch A1

 ntp server 10.0.10.1
 logging trap warning
 logging host 10.0.100.5
 logging on
ip access-list standard SNMP-NMS
  permit host 10.0.100.5
  exit
 snmp-server contact Cisco Student
 snmp-server community ENCORSA ro SNMP-NMS
 snmp-server host 10.0.100.5 version 2c ENCORSA
 snmp-server ifindex persist
 snmp-server enable traps config
 snmp-server enable traps ospf
end

#### Device Configurations (Final)

##### Router R1

R1# show run
Building configuration...


Current configuration : 3406 bytes
!
version 16.9
service timestamps debug datetime msec
service timestamps log datetime msec
platform qfp utilization monitor load 80
no platform punt-keepalive disable-kernel-core
!
hostname R1
!
boot-start-marker
boot-end-marker
!
enable secret 9 $9$0C3pnVdgrnhnY9$uzGA.WZfcLg5IhuyJu22mIf.YyZ/83VgqbO3rXBDuwo
!
aaa new-model
!
aaa authentication login default group radius local
!
aaa session-id common
!
no ip domain lookup
!
login on-success log
!
subscriber templating
!
ipv6 unicast-routing
multilink bundle-name authenticated
!
spanning-tree extend system-id
!
username sadmin privilege 15 secret 9 $9$XCO4pzqbRT.3EP$ymouLOQI5/o0FOkYDtA1ztejFra67MnkJJ5Y3bhyQe6
!
redundancy
 mode none
!
interface GigabitEthernet0/0/0
 ip address 209.165.200.225 255.255.255.224
 negotiation auto
 ipv6 address FE80::1:1 link-local
 ipv6 address 2001:DB8:200::1/64
!
interface GigabitEthernet0/0/1
 ip address 10.0.10.1 255.255.255.0
 negotiation auto
 ipv6 address FE80::1:2 link-local
 ipv6 address 2001:DB8:100:1010::1/64
 ipv6 ospf 6 area 0
!
interface Serial0/1/0
 ip address 10.0.13.1 255.255.255.0
 ipv6 address FE80::1:3 link-local
 ipv6 address 2001:DB8:100:1013::1/64
 ipv6 ospf 6 area 0
!
interface Serial0/1/1
 no ip address
!
router ospf 4
 router-id 0.0.4.1
 network 10.0.10.0 0.0.0.255 area 0
 network 10.0.13.0 0.0.0.255 area 0
 default-information originate
!
router bgp 300
 bgp router-id 1.1.1.1
 bgp log-neighbor-changes
 neighbor 2001:DB8:200::2 remote-as 500
 neighbor 209.165.200.226 remote-as 500
 !
 address-family ipv4
  network 10.0.0.0
  no neighbor 2001:DB8:200::2 activate
  neighbor 209.165.200.226 activate
 exit-address-family
 !
 address-family ipv6
  network 2001:DB8:100::/48
  neighbor 2001:DB8:200::2 activate
 exit-address-family
!
ip forward-protocol nd
no ip http server
ip http secure-server
ip route 10.0.0.0 255.0.0.0 Null0
!
ip access-list standard SNMP-NMS
 permit 10.0.100.5
logging trap warnings
logging host 10.0.100.5
ipv6 route 2001:DB8:100::/48 Null0
ipv6 router ospf 6
 router-id 0.0.6.1
 default-information originate
!
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server enable traps bgp
snmp-server host 10.0.100.5 version 2c ENCORSA
!
radius server RADIUS
 address ipv4 10.0.100.6 auth-port 1812 acct-port 1813
 key $trongPass
!
control-plane
!
banner motd ^C R1, ENCOR Skills Assessment, Scenario 1 ^C
!
line con 0
 exec-timeout 0 0
 logging synchronous
 transport input none
 stopbits 1
line aux 0
 stopbits 1
line vty 0 4
!
ntp server 2.2.2.2
!
end

##### Router R2

R2# show run
Building configuration...


Current configuration : 2029 bytes
!
version 16.9
service timestamps debug datetime msec
service timestamps log datetime msec
platform qfp utilization monitor load 80
no platform punt-keepalive disable-kernel-core
!
hostname R2
!
boot-start-marker
boot-end-marker
!
enable secret 9 $9$kWM5eeaWgcjgDk$klw0rmhA2j9zzPN13oTIYc/.yk9aczrrDxNq4rUNf5c
!
no aaa new-model
!
no ip domain lookup
!
login on-success log
!
subscriber templating
!
ipv6 unicast-routing
multilink bundle-name authenticated
!
spanning-tree extend system-id
!
username sadmin privilege 15 secret 9 $9$xfCWZaD1xuZ5Q.$rje2SE7dafmrTg87ls/vn.PNtMXbaL3kfmN3Jr08yNU
!
redundancy
 mode none
!
interface Loopback0
 ip address 2.2.2.2 255.255.255.255
 ipv6 address FE80::2:3 link-local
 ipv6 address 2001:DB8:2222::1/128
!
interface GigabitEthernet0/0/0
 ip address 209.165.200.226 255.255.255.224
 negotiation auto
 ipv6 address FE80::2:1 link-local
 ipv6 address 2001:DB8:200::2/64
!
interface GigabitEthernet0/0/1
 no ip address
 negotiation auto
!
router bgp 500
 bgp router-id 2.2.2.2
 bgp log-neighbor-changes
 neighbor 2001:DB8:200::1 remote-as 300
 neighbor 209.165.200.225 remote-as 300
 !
 address-family ipv4
  network 0.0.0.0
  network 2.2.2.2 mask 255.255.255.255
  no neighbor 2001:DB8:200::1 activate
  neighbor 209.165.200.225 activate
 exit-address-family
 !
 address-family ipv6
  network ::/0
  network 2001:DB8:2222::/128
  neighbor 2001:DB8:200::1 activate
 exit-address-family
!
ip forward-protocol nd
no ip http server
ip http secure-server
ip route 0.0.0.0 0.0.0.0 Loopback0
!
ipv6 route ::/0 Loopback0
!
control-plane
!
banner motd ^C R2, ENCOR Skills Assessment, Scenario 1 ^C
!
line con 0
 exec-timeout 0 0
 logging synchronous
 transport input none
 stopbits 1
line aux 0
 stopbits 1
line vty 0 4
 login
!
ntp master 3
!
end

##### Router R3

R3# show run
Building configuration...


Current configuration : 2765 bytes
!
version 16.9
service timestamps debug datetime msec
service timestamps log datetime msec
platform qfp utilization monitor load 80
no platform punt-keepalive disable-kernel-core
!
hostname R3
!
boot-start-marker
boot-end-marker
!
enable secret 9 $9$X1WR7NQHvbYXHY$HevkjyeTexlsUxwhnwaZWeh/VEB3CIoGxlPSJ9O.F6o
!
aaa new-model
!
aaa authentication login default group radius local
!
aaa session-id common
!
no ip domain lookup
!
login on-success log
!
subscriber templating
!
ipv6 unicast-routing
multilink bundle-name authenticated
!
spanning-tree extend system-id
!
username sadmin privilege 15 secret 9 $9$y02cJ/kvRKO7DI$eYITN996n5QFlG2zu7OoHu2RLPwbw/8v8lO4nv/n8Aw
!
redundancy
 mode none
!
interface GigabitEthernet0/0/0
 no ip address
 negotiation auto
!
interface GigabitEthernet0/0/1
 ip address 10.0.11.1 255.255.255.0
 negotiation auto
 ipv6 address FE80::3:2 link-local
 ipv6 address 2001:DB8:100:1011::1/64
 ipv6 ospf 6 area 0
!
interface Serial0/1/0
 ip address 10.0.13.3 255.255.255.0
 ipv6 address FE80::3:3 link-local
 ipv6 address 2001:DB8:100:1010::2/64
 ipv6 ospf 6 area 0
!
interface Serial0/1/1
 no ip address
!
router ospf 4
 router-id 0.0.4.3
 network 10.0.11.0 0.0.0.255 area 0
 network 10.0.13.0 0.0.0.255 area 0
!
ip forward-protocol nd
no ip http server
ip http secure-server
!
ip access-list standard SNMP-NMS
 permit 10.0.100.5
logging trap warnings
logging host 10.0.100.5
ipv6 router ospf 6
 router-id 0.0.6.3
!
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA
!
radius server RADIUS
 address ipv4 10.0.100.6 auth-port 1812 acct-port 1813
 key $trongPass
!
control-plane
!
banner motd ^C R3, ENCOR Skills Assessment, Scenario 1 ^C
!
line con 0
 exec-timeout 0 0
 logging synchronous
 transport input none
 stopbits 1
line aux 0
 stopbits 1
line vty 0 4
!
ntp server 10.0.10.1
!
end

##### Switch D1

D1# show run
Building configuration...

Current configuration : 8260 bytes
!
version 16.9
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
no platform punt-keepalive disable-kernel-core
!
hostname D1
!
vrf definition Mgmt-vrf
 !
 address-family ipv4
 exit-address-family
 !
 address-family ipv6
 exit-address-family
!
enable secret 9 $9$RWOFeoZQQ/zqJk$rEnKpZ9Dx6asfA/16o3cPHR3hYQvn2gFiZuybdaFo82
!
aaa new-model
!
aaa authentication login default group radius local
!
aaa session-id common
switch 1 provision ws-c3650-24ps
!
ip routing
!
no ip domain lookup
ip dhcp excluded-address 10.0.101.1 10.0.101.109
ip dhcp excluded-address 10.0.101.141 10.0.101.254
ip dhcp excluded-address 10.0.102.1 10.0.102.109
ip dhcp excluded-address 10.0.102.141 10.0.102.254
!
ip dhcp pool VLAN-101
 network 10.0.101.0 255.255.255.0
 default-router 10.0.101.254
!
ip dhcp pool VLAN-102
 network 10.0.102.0 255.255.255.0
 default-router 10.0.102.254
!
login on-success log
ipv6 unicast-routing
!
license boot level ipservicesk9
!
diagnostic bootup level minimal
!
spanning-tree mode rapid-pvst
spanning-tree extend system-id
spanning-tree vlan 100,102 priority 24576
spanning-tree vlan 101 priority 28672
!
username sadmin privilege 15 secret 9 $9$yBNV4PYk3Zdpak$N2uvIju4cfG5jQsynRkIv0EHas6ivCZRAtkztAnLiVo
!
redundancy
 mode sso
!
transceiver type all
 monitoring
!
track 4 ip sla 4
 delay down 10 up 15
!
track 6 ip sla 6
 delay down 10 up 15
!
class-map match-any system-cpp-police-topology-control
  description Topology control
class-map match-any system-cpp-police-sw-forward
  description Sw forwarding, L2 LVX data, LOGGING
class-map match-any system-cpp-default
  description Inter FED, EWLC control, EWLC data
class-map match-any system-cpp-police-sys-data
  description Learning cache ovfl, High Rate App, Exception, EGR Exception, NFLSAMPLED DATA, RPF Failed
class-map match-any system-cpp-police-punt-webauth
  description Punt Webauth
class-map match-any system-cpp-police-l2lvx-control
  description L2 LVX control packets
class-map match-any system-cpp-police-forus
  description Forus Address resolution and Forus traffic
class-map match-any system-cpp-police-multicast-end-station
  description MCAST END STATION
class-map match-any system-cpp-police-multicast
  description Transit Traffic and MCAST Data
class-map match-any system-cpp-police-l2-control
  description L2 control
class-map match-any system-cpp-police-dot1x-auth
  description DOT1X Auth
class-map match-any system-cpp-police-data
  description ICMP redirect, ICMP_GEN and BROADCAST
class-map match-any system-cpp-police-stackwise-virt-control
  description Stackwise Virtual
class-map match-any non-client-nrt-class
class-map match-any system-cpp-police-routing-control
  description Routing control and Low Latency
class-map match-any system-cpp-police-protocol-snooping
  description Protocol snooping
class-map match-any system-cpp-police-dhcp-snooping
  description DHCP snooping
class-map match-any system-cpp-police-system-critical
  description System Critical and Gold Pkt
!
policy-map system-cpp-policy
!
!
interface Port-channel1
 switchport trunk native vlan 999
 switchport mode trunk
!
interface Port-channel12
 switchport trunk native vlan 999
 switchport mode trunk
!
interface GigabitEthernet0/0
 vrf forwarding Mgmt-vrf
 no ip address
 negotiation auto
!
interface GigabitEthernet1/0/1
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/2
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/3
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/4
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/5
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 1 mode active
!
interface GigabitEthernet1/0/6
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 1 mode active
!
interface GigabitEthernet1/0/7
 shutdown
!
interface GigabitEthernet1/0/8
 shutdown
!
interface GigabitEthernet1/0/9
 shutdown
!
interface GigabitEthernet1/0/10
 shutdown
!
interface GigabitEthernet1/0/11
 no switchport
 ip address 10.0.10.2 255.255.255.0
 ipv6 address FE80::D1:1 link-local
 ipv6 address 2001:DB8:100:1010::2/64
 ipv6 ospf 6 area 0
!
interface GigabitEthernet1/0/12
 shutdown
!
interface GigabitEthernet1/0/13
 shutdown
!
interface GigabitEthernet1/0/14
 shutdown
!
interface GigabitEthernet1/0/15
 shutdown
!
interface GigabitEthernet1/0/16
 shutdown
!
interface GigabitEthernet1/0/17
 shutdown
!
interface GigabitEthernet1/0/18
 shutdown
!
interface GigabitEthernet1/0/19
 shutdown
!
interface GigabitEthernet1/0/20
 shutdown
!
interface GigabitEthernet1/0/21
 shutdown
!
interface GigabitEthernet1/0/22
 shutdown
!
interface GigabitEthernet1/0/23
 switchport access vlan 100
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/24
 shutdown
!
interface GigabitEthernet1/1/1
 shutdown
!
interface GigabitEthernet1/1/2
 shutdown
!
interface GigabitEthernet1/1/3
 shutdown
!
interface GigabitEthernet1/1/4
 shutdown
!
interface Vlan1
 no ip address
!
interface Vlan100
 ip address 10.0.100.1 255.255.255.0
 standby version 2
 standby 104 ip 10.0.100.254
 standby 104 priority 150
 standby 104 preempt
 standby 104 track 4 decrement 60
 standby 106 ipv6 autoconfig
 standby 106 priority 150
 standby 106 preempt
 standby 106 track 6 decrement 60
 ipv6 address FE80::D1:2 link-local
 ipv6 address 2001:DB8:100:100::1/64
 ipv6 ospf 6 area 0
!
interface Vlan101
 ip address 10.0.101.1 255.255.255.0
 standby version 2
 standby 114 ip 10.0.101.254
 standby 114 preempt
 standby 114 track 4 decrement 60
 standby 116 ipv6 autoconfig
 standby 116 preempt
 standby 116 track 6 decrement 60
 ipv6 address FE80::D1:3 link-local
 ipv6 address 2001:DB8:100:101::1/64
 ipv6 ospf 6 area 0
!
interface Vlan102
 ip address 10.0.102.1 255.255.255.0
 standby version 2
 standby 124 ip 10.0.102.254
 standby 124 priority 150
 standby 124 preempt
 standby 124 track 4 decrement 60
 standby 126 ipv6 autoconfig
 standby 126 priority 150
 standby 126 preempt
 standby 126 track 6 decrement 60
 ipv6 address FE80::D1:4 link-local
 ipv6 address 2001:DB8:100:102::1/64
 ipv6 ospf 6 area 0
!
router ospf 4
 router-id 0.0.4.131
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
 network 10.0.10.0 0.0.0.255 area 0
 network 10.0.100.0 0.0.0.255 area 0
 network 10.0.101.0 0.0.0.255 area 0
 network 10.0.102.0 0.0.0.255 area 0
!
ip forward-protocol nd
ip http server
ip http secure-server
!
ip access-list standard SNMP-NMS
 permit 10.0.100.5
!
ip sla 4
 icmp-echo 10.0.10.1
 frequency 5
ip sla schedule 4 life forever start-time now
ip sla 6
 icmp-echo 2001:DB8:100:1010::1
 frequency 5
ip sla schedule 6 life forever start-time now
logging trap warnings
logging host 10.0.100.5
ipv6 router ospf 6
 router-id 0.0.6.131
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
!
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA
snmp ifmib ifindex persist
!
radius server RADIUS
 address ipv4 10.0.100.6 auth-port 1812 acct-port 1813
 key $trongPass
!
control-plane
 service-policy input system-cpp-policy
!
banner motd ^C D1, ENCOR Skills Assessment, Scenario 1 ^C
!
line con 0
 exec-timeout 0 0
 logging synchronous
 stopbits 1
line aux 0
 stopbits 1
line vty 5 15
!
ntp server 10.0.10.1
!
end

##### Switch D2

D2# show run
Building configuration...

Current configuration : 8208 bytes
!
version 16.9
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
no platform punt-keepalive disable-kernel-core
!
hostname D2
!
vrf definition Mgmt-vrf
 !
 address-family ipv4
 exit-address-family
 !
 address-family ipv6
 exit-address-family
!
enable secret 9 $9$CQubYNwHPhsPpE$QWfTfAlfzmWD3ELHkcFNzlDlp24FkpjLnGBRMPbUNow
!
aaa new-model
!
aaa authentication login default group radius local
!
aaa session-id common
switch 1 provision ws-c3650-24ps
!
ip routing
!
no ip domain lookup
ip dhcp excluded-address 10.0.101.1 10.0.101.209
ip dhcp excluded-address 10.0.101.241 10.0.101.254
ip dhcp excluded-address 10.0.102.1 10.0.102.209
ip dhcp excluded-address 10.0.102.241 10.0.102.254
!
ip dhcp pool VLAN-101
 network 10.0.101.0 255.255.255.0
 default-router 10.0.101.254
!
ip dhcp pool VLAN-102
 network 10.0.102.0 255.255.255.0
 default-router 10.0.102.254
!
login on-success log
ipv6 unicast-routing
!
license boot level ipservicesk9
!
diagnostic bootup level minimal
!
spanning-tree mode rapid-pvst
spanning-tree extend system-id
spanning-tree vlan 100,102 priority 28672
spanning-tree vlan 101 priority 24576
!
username sadmin privilege 15 secret 9 $9$0bnG9yhbASQv9k$geQoMT2qxu1ItBXC5pl/SOR2YeWhqDOW0lsMIsicQDw
!
redundancy
 mode sso
!
transceiver type all
 monitoring
!
track 4 ip sla 4
 delay down 10 up 15
!
track 6 ip sla 6
 delay down 10 up 15
!
class-map match-any system-cpp-police-topology-control
  description Topology control
class-map match-any system-cpp-police-sw-forward
  description Sw forwarding, L2 LVX data, LOGGING
class-map match-any system-cpp-default
  description Inter FED, EWLC control, EWLC data
class-map match-any system-cpp-police-sys-data
  description Learning cache ovfl, High Rate App, Exception, EGR Exception, NFLSAMPLED DATA, RPF Failed
class-map match-any system-cpp-police-punt-webauth
  description Punt Webauth
class-map match-any system-cpp-police-l2lvx-control
  description L2 LVX control packets
class-map match-any system-cpp-police-forus
  description Forus Address resolution and Forus traffic
class-map match-any system-cpp-police-multicast-end-station
  description MCAST END STATION
class-map match-any system-cpp-police-multicast
  description Transit Traffic and MCAST Data
class-map match-any system-cpp-police-l2-control
  description L2 control
class-map match-any system-cpp-police-dot1x-auth
  description DOT1X Auth
class-map match-any system-cpp-police-data
  description ICMP redirect, ICMP_GEN and BROADCAST
class-map match-any system-cpp-police-stackwise-virt-control
  description Stackwise Virtual
class-map match-any non-client-nrt-class
class-map match-any system-cpp-police-routing-control
  description Routing control and Low Latency
class-map match-any system-cpp-police-protocol-snooping
  description Protocol snooping
class-map match-any system-cpp-police-dhcp-snooping
  description DHCP snooping
class-map match-any system-cpp-police-system-critical
  description System Critical and Gold Pkt
!
policy-map system-cpp-policy
!
interface Port-channel2
 switchport trunk native vlan 999
 switchport mode trunk
!
interface Port-channel12
 switchport trunk native vlan 999
 switchport mode trunk
!
interface GigabitEthernet0/0
 vrf forwarding Mgmt-vrf
 no ip address
 negotiation auto
!
interface GigabitEthernet1/0/1
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/2
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/3
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/4
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 12 mode active
!
interface GigabitEthernet1/0/5
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 2 mode active
!
interface GigabitEthernet1/0/6
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 2 mode active
!
interface GigabitEthernet1/0/7
 shutdown
!
interface GigabitEthernet1/0/8
 shutdown
!
interface GigabitEthernet1/0/9
 shutdown
!
interface GigabitEthernet1/0/10
 shutdown
!
interface GigabitEthernet1/0/11
 no switchport
 ip address 10.0.11.2 255.255.255.0
 ipv6 address FE80::D1:1 link-local
 ipv6 address 2001:DB8:100:1011::2/64
 ipv6 ospf 6 area 0
!
interface GigabitEthernet1/0/12
 shutdown
!
interface GigabitEthernet1/0/13
 shutdown
!
interface GigabitEthernet1/0/14
 shutdown
!
interface GigabitEthernet1/0/15
 shutdown
!
interface GigabitEthernet1/0/16
 shutdown
!
interface GigabitEthernet1/0/17
 shutdown
!
interface GigabitEthernet1/0/18
 shutdown
!
interface GigabitEthernet1/0/19
 shutdown
!
interface GigabitEthernet1/0/20
 shutdown
!
interface GigabitEthernet1/0/21
 shutdown
!
interface GigabitEthernet1/0/22
 shutdown
!
interface GigabitEthernet1/0/23
 switchport access vlan 102
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/24
 shutdown
!
interface GigabitEthernet1/1/1
 shutdown
!
interface GigabitEthernet1/1/2
 shutdown
!
interface GigabitEthernet1/1/3
 shutdown
!
interface GigabitEthernet1/1/4
 shutdown
!
interface Vlan1
 no ip address
!
interface Vlan100
 ip address 10.0.100.2 255.255.255.0
 standby version 2
 standby 104 ip 10.0.100.254
 standby 104 preempt
 standby 104 track 4 decrement 60
 standby 106 ipv6 autoconfig
 standby 106 preempt
 standby 106 track 6 decrement 60
 ipv6 address FE80::D2:2 link-local
 ipv6 address 2001:DB8:100:100::2/64
 ipv6 ospf 6 area 0
!
interface Vlan101
 ip address 10.0.101.2 255.255.255.0
 standby version 2
 standby 114 ip 10.0.101.254
 standby 114 priority 150
 standby 114 preempt
 standby 114 track 4 decrement 60
 standby 116 ipv6 autoconfig
 standby 116 priority 150
 standby 116 preempt
 standby 116 track 6 decrement 60
 ipv6 address FE80::D2:3 link-local
 ipv6 address 2001:DB8:100:101::2/64
 ipv6 ospf 6 area 0
!
interface Vlan102
 ip address 10.0.102.2 255.255.255.0
 standby version 2
 standby 124 ip 10.0.102.254
 standby 124 preempt
 standby 124 track 4 decrement 60
 standby 126 ipv6 autoconfig
 standby 126 preempt
 standby 126 track 6 decrement 60
 ipv6 address FE80::D2:4 link-local
 ipv6 address 2001:DB8:100:102::2/64
 ipv6 ospf 6 area 0
!
router ospf 4
 router-id 0.0.4.132
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
 network 10.0.11.0 0.0.0.255 area 0
 network 10.0.100.0 0.0.0.255 area 0
 network 10.0.101.0 0.0.0.255 area 0
 network 10.0.102.0 0.0.0.255 area 0
!
ip forward-protocol nd
ip http server
ip http secure-server
!
ip access-list standard SNMP-NMS
 permit 10.0.100.5
!
ip sla 4
 icmp-echo 10.0.11.1
 frequency 5
ip sla schedule 4 life forever start-time now
ip sla 6
 icmp-echo 2001:DB8:100:1011::1
 frequency 5
ip sla schedule 6 life forever start-time now
logging trap warnings
logging host 10.0.100.5
ipv6 router ospf 6
 router-id 0.0.6.132
 passive-interface default
 no passive-interface GigabitEthernet1/0/11
!
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps ospf state-change
snmp-server enable traps ospf errors
snmp-server enable traps ospf retransmit
snmp-server enable traps ospf lsa
snmp-server enable traps ospf cisco-specific state-change nssa-trans-change
snmp-server enable traps ospf cisco-specific state-change shamlink interface
snmp-server enable traps ospf cisco-specific state-change shamlink neighbor
snmp-server enable traps ospf cisco-specific errors
snmp-server enable traps ospf cisco-specific retransmit
snmp-server enable traps ospf cisco-specific lsa
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA
!
radius server RADIUS
 address ipv4 10.0.100.6 auth-port 1812 acct-port 1813
 key $trongPass
!
control-plane
 service-policy input system-cpp-policy
!
banner motd ^C D2, ENCOR Skills Assessment, Scenario 1 ^C
!
line con 0
 exec-timeout 0 0
 logging synchronous
 stopbits 1
line aux 0
 stopbits 1
line vty 5 15
!
ntp server 10.0.10.1
!
end

##### Switch A1

A1# show run
Building configuration...

Current configuration : 3102 bytes
!
version 15.2
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
no service password-encryption
!
hostname A1
!
boot-start-marker
boot-end-marker
!
enable secret 9 $9$W4yJyY0jfUFGt3$hgWzRhouqq81DGKiSw3oN3ICGIRFKI1TF9C4Qo2BoGk
!
username sadmin privilege 15 secret 9 $9$rlz/oiC6xETwLL$4MFl7ezehKgosutkpnwabhdf83xQOcDXYyW.dvyoneY
aaa new-model
!
aaa authentication login default group radius local
!
aaa session-id common
system mtu routing 1500
!
no ip domain-lookup
!
spanning-tree mode rapid-pvst
spanning-tree extend system-id
!
vlan internal allocation policy ascending
!
interface Port-channel1
 switchport trunk native vlan 999
 switchport mode trunk
!
interface Port-channel2
 switchport trunk native vlan 999
 switchport mode trunk
!
interface FastEthernet0/1
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 1 mode active
!
interface FastEthernet0/2
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 1 mode active
!
interface FastEthernet0/3
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 2 mode active
!
interface FastEthernet0/4
 switchport trunk native vlan 999
 switchport mode trunk
 channel-group 2 mode active
!
interface FastEthernet0/5
 shutdown
!
interface FastEthernet0/6
 shutdown
!
interface FastEthernet0/7
 shutdown
!
interface FastEthernet0/8
 shutdown
!
interface FastEthernet0/9
 shutdown
!
interface FastEthernet0/10
 shutdown
!
interface FastEthernet0/11
 shutdown
!
interface FastEthernet0/12
 shutdown
!
interface FastEthernet0/13
 shutdown
!
interface FastEthernet0/14
 shutdown
!
interface FastEthernet0/15
 shutdown
!
interface FastEthernet0/16
 shutdown
!
interface FastEthernet0/17
 shutdown
!
interface FastEthernet0/18
 shutdown
!
interface FastEthernet0/19
 shutdown
!
interface FastEthernet0/20
 shutdown
!
interface FastEthernet0/21
 shutdown
!
interface FastEthernet0/22
 shutdown
!
interface FastEthernet0/23
 switchport access vlan 101
 switchport mode access
 spanning-tree portfast edge
!
interface FastEthernet0/24
 switchport access vlan 100
 switchport mode access
 spanning-tree portfast edge
!
interface GigabitEthernet0/1
!
interface GigabitEthernet0/2
!
interface Vlan1
 no ip address
 shutdown
!
interface Vlan100
 ip address 10.0.100.3 255.255.255.0
 ipv6 address FE80::A1:1 link-local
 ipv6 address 2001:DB8:100:100::3/64
!
ip default-gateway 10.0.100.254
ip http server
ip http secure-server
!
ip access-list standard SNMP-NMS
 permit 10.0.100.5
!
logging trap warnings
logging host 10.0.100.5
!
snmp-server community ENCORSA RO SNMP-NMS
snmp-server contact Cisco Student
snmp-server enable traps config
snmp-server host 10.0.100.5 version 2c ENCORSA
!
radius server RADIUS
 address ipv4 10.0.100.6 auth-port 1812 acct-port 1813
 key $trongPass
!
banner motd ^C A1, ENCOR Skills Assessment, Scenario 1 ^C
!
line con 0
 exec-timeout 0 0
 logging synchronous
line vty 5 15
!
ntp server 10.0.10.1
end