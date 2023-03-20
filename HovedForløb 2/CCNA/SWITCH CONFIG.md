## Basic start setup
```bash
enable 
configure terminal 
enable secret 
password service password-encryption 
banner motd “meddelelse” 
no ip domain-lookup
line console 0
password password 
login 
logging synchronous 
exec-timeout xx (minutes inactive before disconnecting)
exit
```

## VLAN
```bash
line vty 0 15
password password
login
logging synchronous
exec-timeout xx (minutes inactive before disconnecting)
exit

interface vlan 1
ip address x.x.x.x y.y.y.y
no shutdown
```

## Assign Voice Vlan
```bash
ip default-gateway x.x.x.x
exit
copy running-config startup-config
VLan:
Make Vlan:
S3(config)# vlan 20
S3(config-vlan)# name student
S3(config-vlan)# vlan 150
S3(config-vlan)# name VOICE
S3(config-vlan)# exit
S3(config)# interface fa0/18
S3(config-if)# switchport mode access
S3(config-if)# switchport access vlan 20
S3(config-if)# mls qos trust cos
S3(config-if)# switchport voice vlan 150
S3(config-if)# end

Management interface
S1(config)# interface VLan xxxx
S1(config-if)# ip add x.x.x.x y.y.y.y
S1(config-if)# no shut
S1(config-if)# exit
S1(config)# ip default-gateway x.x.x.x

Assign Vlan:
S1(config)# interface fa0/6
S1(config-if)# switchport mode access
S1(config-if)# switchport access vlan 10
S1(config-if)# no shut
S1(config-if)# exit
```

## Trunks
```bash
Int f x/x
Switchport mode access
Switchport access vlan xxxx
Mls qos trust cos
Switchport voice VLan xxxx

Show Vlans:
Show interface VLan: (brief, id VLan-id, Name VLan-Name, Summary)
Delete Vlan:
Delete flash:vlan.dat / delete vlan.dat
```

## Create SVI-Vlan
```bash
S1(config)# interface fa0/1
S1(config-if)# switchport mode trunk
S1(config-if)# no shut
S1(config-if)# exit
S1(config)# interface fa0/5
S1(config-if)# switchport mode trunk
S1(config-if)# no shut
S1(config-if)# end
```

```bash
D1(config)# interface vlan 10
description Default Gateway SVI for 192.168.10.0/24
ip add 192.168.10.1 255.255.255.0
no shut
exit

D1(config)# int vlan 20
description Default Gateway SVI for 192.168.20.0/24
ip add 192.168.20.1 255.255.255.0
no shut
exit

D1(config)# interface GigabitEthernet1/0/6
description Access port to PC1
switchport mode access
switchport access vlan 10
exit

D1(config)# interface GigabitEthernet1/0/18
description Access port to PC2
switchport mode access
switchport access vlan 20
exit
```

```bash
S1(config)# interface range FastEthernet 0/1 - 2
S1(config-if-range)# channel-group 1 mode on/active/passive
Creating a port-channel interface Port-channel 1
S1(config-if-range)# exit
S1(config)# interface port-channel 1
S1(config)# switchport mode trunk
S1(config)# switchport trunk allowed vlan 1,2,20
```

*Kanalen er aktiv når siderne er sat til; on – on, active – active eller active – passive.*
## PAgP
```bash
S1(config)# interface range FastEthernet 0/1 - 2
S1(config-if-range)# channel-group 1 mode on/desirable/auto
Creating a port-channel interface Port-channel 1
S1(config-if-range)# exit
S1(config)# interface port-channel 1
S1(config)# switchport mode trunk
S1(config)# switchport trunk allowed vlan 1,2,20
```

*Kanalen er aktiv når siderne er sat til; on – on, desirable – desireable eller auto – desirable.*
## Enable portsecurity
```bash
S1(config)# interface range fa0/8 - 24
S1(config-if-range)# shutdown
S1(config-if-range)# end
S1(config)# interface f0/1
S1(config-if)# switchport port-security
Command rejected: FastEthernet0/1 is a dynamic port.
S1(config-if)# switchport mode access
S1(config-if)# switchport port-security
S1(config-if)# end
S1# show port-security interface f0/1 
```
