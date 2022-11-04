Named Standard IPv4 ACL Syntax:
``` bash
(config)#ip access-list standard access-list-name 
eks.: 
(config)#ip access-list standard NO-ACCESS
```

Apply a Standard numbered IPv4 ACL:
```bash
config-if) # ip access-group {access-list-number | access-list-name} {in | out} 
eks.: 
(config)# access-list 10 remark ACE permits ONLY host 192.168.10.10 to the internet
(config)# access-list 10 permit host 192.168.20.0 0.0.0.255 
(config)# do show access-lists 
	Standard IP access list 10 
	10 permit 192.168.10.10 
	20 permit 192.168.20.0, wildcard bits 0.0.0.255
```

Apply ACL 10 outbound on the Serial 0/1/0 interface:
```bash
(config)# interface Serial 0/1/0
(config-if)# ip access-group 10 out
```

Remove ACL:
```bash
(config)# no access-list 10
```

Confirmation And Debugging:
```bash
# show run | section access-list
access-list 10 remark ACE permits host 192.168.10.10
access-list 10 permit 192.168.10.10
access-list 10 remark ACE permits all host in LAN 2
access-list 10 permit 192.168.20.0 0.0.0.255

#show ip int Serial 0/1/0 | include access list
```

Secure VTY Ports with a Standard IPv4 ACL:
```bash
(config-line)# access-class {access-list-number | access-list-name} { in | out } 
eks:
(config)# username ADMIN secret class
(config)# ip access-list standard ADMIN-HOST
(config-std-nacl)# remark This ACL secures incoming vty lines
(config-std-nacl)# permit 192.168.10.10
(config-std-nacl)# deny any
(config-std-nacl)# exit

(config)# line vty 0 4
(config-line)# login local
(config-line)# transport input telnet
(config-line)# access-class ADMIN-HOST in
(config-line)# end
```

Named extended ACL example:
```bash
R1(config)# ip access-list extended SURFING
R1(config-ext-nacl)# Remark Permits inside HTTP and HTTPS traffic 
R1(config-ext-nacl)# permit tcp 192.168.10.0 0.0.0.255 any eq 80
R1(config-ext-nacl)# permit tcp 192.168.10.0 0.0.0.255 any eq 443
R1(config-ext-nacl)# exit
R1(config)# 
R1(config)# ip access-list extended BROWSING
R1(config-ext-nacl)# Remark Only permit returning HTTP and HTTPS traffic 
R1(config-ext-nacl)# permit tcp any 192.168.10.0 0.0.0.255 established
R1(config-ext-nacl)# exit
R1(config)# interface g0/0/0
R1(config-if)# ip access-group SURFING in
R1(config-if)# ip access-group BROWSING out
R1(config-if)# end
R1# show access-lists
Extended IP access list SURFING
    10 permit tcp 192.168.10.0 0.0.0.255 any eq www
    20 permit tcp 192.168.10.0 0.0.0.255 any eq 443 (xxx matches) 
Extended IP access list BROWSING
    10 permit tcp any 192.168.10.0 0.0.0.255 established (xxx matches)
```

