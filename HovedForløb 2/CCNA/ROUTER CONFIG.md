```bash
enable
configure terminal
hostname navn
enable secret password
service password-encryption
banner motd “meddelelse”
security passwords min-length antal (minimum længde af password)
login block-for xx attempts x within xx (Blokerer login efter antal forsøg. x antal forsøg indenfor xx antal sekunder)
no ip domain-lookup 
ip domain-name domænenavn (f.eks navn på router.com)
crypto key generate rsa 
xxxx (antal bytes brugt til krypteret SSH session mellem host og destination) 
(giver tilladelse til local og fjernadgang)
```

```bash
line console 0
password password
login
logging synchronous
exec-timeout xx (minutes inactive before disconnecting)
exit
```

```bash
line vty 0 4
password password
transport input ssh (fjerner mulighed for Telnet sessions, så der kun køres SSH)
login local (opsætning af login for udvalgt bruger. Se * længere nede. )
logging synchronous
exec-timeout xx (minutes inactive before disconnecting)
exit
line aux 0
password password
login
logging synchronous
exec-timeout xx (minutes inactive before disconnecting)
exit
ip ssh version 2
ip ssh time-out 120
username brugernavn privilege sikkerhedsniveau secret password (opsætning af SSH login session*)
interface g0/0 (husk rigtigt interface)
ip address x.x.x.x y.y.y.y
description description
ipv6 address ipv6 address 
ipv6 address ipv6 link-local address link-local
no shutdown
exit
ipv6 unicast-routing
exit
copy running-configuration startup-configuration
copy running-config servername followed by : (gemmer running config eksternt)
server ip address x.x.x.x
```

```bash
Static Route:
Syntax:
R(config )# ip route network-address subnet-mask {ip-address | exit-intf [ip-address]} [distance]
Next-hop:
R1 (config)# ip route (fjernetværket+submask) (next-hop address)
Directly connected network:
R(config )# ip route (fjernetværket +subnetmask) (exit-interface)
Fully specified static route:
R1 (config)# ip route (fjernetværket+submask) (exit-interface) (next-hop address)
Eksempel:
 ip route 192.168.1.0 255.255.255.0 G0/0/1 172.16.3.0

Default static route: 
R1(config)# ip route 0.0.0.0 0.0.0.0 next-hop-address
R1(config)# ipv6 route ::/0 next-hop-address

Floating static route:
R1(config)# ip route 0.0.0.0 0.0.0.0 next-hop address

ipv6 route ::/0 next-hop address
ipv6 route ::/0 next-hop address

configure static host routes:
R1(config)# ip route (fjernetværket+255.255.255.255) Next-hop-address
R1(config)# ipv6 route (fjernetværket+/128) Next-hop-address

Show ip route
Ipv6:
Brug ipv6 i stedet for ip, og prefix ved ipv6 routing. Husk: ipv6 unicast-routing.
```

## Router trunk config:
```bash
R1(config)# interface G0/0/1.10
R1(config-subif)# description Default Gateway for VLAN 10
R1(config-subif)# encapsulation dot1Q 10
R1(config-subif)# ip add 192.168.10.1 255.255.255.0
R1(config-subif)# exit
R1(config)#
R1(config)# interface G0/0/1.20
R1(config-subif)# description Default Gateway for VLAN 20
R1(config-subif)# encapsulation dot1Q 20
R1(config-subif)# ip add 192.168.20.1 255.255.255.0
R1(config-subif)# exit
R1(config)#
R1(config)# interface G0/0/1.99
R1(config-subif)# description Default Gateway for VLAN 99
R1(config-subif)# encapsulation dot1Q 99
R1(config-subif)# ip add 192.168.99.1 255.255.255.0
R1(config-subif)# exit
R1(config)#
R1(config)# interface G0/0/1
R1(config-if)# description Trunk link to S1
R1(config-if)# no shut
R1(config-if)# end
```