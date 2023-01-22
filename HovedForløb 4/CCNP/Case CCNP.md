```BASH
Router Edge conf:
Router Edge:
hostname Edge
no ip domain-name
interface g ....
ip address 11.11.11.1 255.255.255.252
interface g ....
ip address 11.11.11.2 255.255.255.252
int lo0 
ip address ...
router ospf 10 
network 172.16.0.0 0.0.255.255 a 0
network 172.16.10.0 0.0.255.255 a 0
router ospf 10 
default originate-infromation 

Router2
hostname R2
no ip domain-name
interface g 1/0/0
ip address 11.11.11.2 255.255.255.252
no
router ospf 10
network 11.11.11.0 0.0.0.3 a 0
network 10.10.10.0 0.0.0.255 a 0
network 10.10.20.0 0.0.0.255 a 0
interface g 1/0/1.10
encapsulation dot1Q 10 
description Link to VLAN 10
interface g 1/0/1.20
encapsulation dot1Q 20 
description Link to VLAN 20
interface g1/0/1 
no shutdown

```