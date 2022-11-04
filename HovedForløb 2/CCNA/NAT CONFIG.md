Static nat:
```bash
mapping mellem inside local og outside global address
(config)# ip nat inside source static 192.168.10.254 209.165.201.5
Vælg interfaces der skal deltage i NA:
(config)# interface serial 0/1/0
(config-if)# ip address 192.168.1.2 255.255.255.252
(config-if)# ip nat inside
(config-if)# exit
(config)# interface serial 0/1/1
(config-if)# ip address 209.165.200.1 255.255.255.252
(config-if)# ip nat outside

utilities:
# show ip nat translations
# show ip nat statistics
```

Dynamic nat:
```bash
1)definer en pool til nat:
(config)# ip nat pool NAT-POOL1 209.165.200.226 209.165.200.240 netmask 255.255.255.224

2)Lav en standard acl der definerer addresserne der oversættes:
access-list 1 permit 192.168.0.0 0.0.255.255

3)Bind the ACL to the pool, using the following command syntax:
(config)# ip nat inside source list 1 pool NAT-POOL1

4)Identify which interfaces are inside, in relation to NAT:
(config)# interface serial 0/1/0
(config-if)# ip nat inside

5)Identify which interfaces are outside, in relation to NAT:
(config)# interface serial 0/1/1
(config-if)# ip nat outside
```

PAT:
```bash
Configure PAT to Use a Single IPv4 Address(Static):
(config)# ip nat inside source list 1 interface serial 0/1/1 overload
(config)# access-list 1 permit 192.168.0.0 0.0.255.255
(config)# interface serial0/1/0
(config-if)# ip nat inside
(config-if)# exit
(config)# interface Serial0/1/1
(config-if)# ip nat outside

Configure PAT to Use an Address Pool (Dynamic):
(config)# ip nat pool NAT-POOL2 209.165.200.226 209.165.200.240 netmask 255.255.255.224
(config)# access-list 1 permit 192.168.0.0 0.0.255.255
(config)# ip nat inside source list 1 pool NAT-POOL2 overload
(config)# 
(config)# interface serial0/1/0
(config-if)# ip nat inside
(config-if)# exit
(config)# interface serial0/1/1
(config-if)# ip nat outside
(config-if)# end 
```