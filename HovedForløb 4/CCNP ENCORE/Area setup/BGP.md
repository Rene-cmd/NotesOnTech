## Advanced BGP:

BGP (Border Gateway Protocol) is a routing protocol used to exchange routing information between different autonomous systems (ASes) on the internet. Configuring BGP on Cisco routers involves several steps, including configuring basic router settings, configuring BGP parameters, and configuring BGP routing policies. Here is an overview of the configuration steps:

1.  Basic Router Configuration
    
    -   Assign an IP address to the router interface(s)
    -   Configure the router hostname and domain name
    -   Set the router time zone
    -   Enable IP routing
2.  BGP Configuration
    
    -   Enable BGP routing process using the "router bgp" command
    -   Configure the router's BGP autonomous system (AS) number using the "bgp as-number" command
    -   Configure the router's BGP neighbor(s) using the "neighbor ip-address remote-as as-number" command
    -   Configure the router's BGP network(s) using the "network network-address mask" command
3.  BGP Routing Policy Configuration
    
    -   Configure BGP prefix filtering using the "prefix-list" command
    -   Configure BGP route maps using the "route-map" command
    -   Configure BGP communities using the "community" command

Here is an example of BGP configuration on a Cisco router:
```python
router bgp 65001
  neighbor 192.168.1.1 remote-as 65002
  network 10.0.0.0 mask 255.255.0.0
  neighbor 192.168.1.1 prefix-list prefix-filter in
  neighbor 192.168.1.1 route-map bgp-policy in

ip prefix-list prefix-filter seq 10 permit 10.0.0.0/16

route-map bgp-policy permit 10
  match ip address prefix-filter
  set community 65001:100
```

In this example, the router is configured to use BGP with AS number 65001. The router has a BGP neighbor at IP address 192.168.1.1 with AS number 65002. The router advertises the network 10.0.0.0/16 using BGP. The router also filters incoming BGP prefixes using the prefix-list "prefix-filter" and applies a BGP policy using the route-map "bgp-policy". The BGP policy adds the community attribute "65001:100" to any prefix that matches the prefix-list.

## ACL:

## Configure:
```c
ISP#conf t 
Enter configuration commands, one per line. End with CNTL/Z. 
ISP(config)#router bgp 65550 
Next, specify the IP addresses and AS numbers of the neighbors to peer with: 
ISP(config-router)#neighbor 203.0.113.1 remote-as 65001 
ISP(config-router)#neighbor 198.51.100.1 remote-as 65004 
Now let’s configure R1: 
R1#conf t 
Enter configuration commands, one per line. End with CNTL/Z. 
R1(config)#router bgp 65001 
Configure the peering with ISP: 
R1(config-router)#neighbor 203.0.113.2 remote-as 65550 
R1(config-router)# The neighborship with ISP comes up: %BGP-5-ADJCHANGE: neighbor 203.0.113.2 Up Configure the peering with R4:
R1(config-router)#neighbor 10.0.14.4 remote-as 65004 
And finally let’s configure R4: 
R4#conf t 
Enter configuration commands, one per line. End with CNTL/Z. 
R4(config)#router bgp 65004 
R4(config-router)#neighbor 198.51.100.2 remote-as 65550 
R4(config-router)# %BGP-5-ADJCHANGE: neighbor 198.51.100.2 Up 
R4(config-router)#neighbor 10.0.14.1 remote-as 65001 
R4(config-router)# %BGP-5-ADJCHANGE: neighbor 10.0.14.1 Up
```
