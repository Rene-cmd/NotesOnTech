## Loopback config:
```bash
(config-if)# interface loopback 1
(config-if)# ip address 1.1.1.1 255.255.255.255
(config-if)# end
# show ip protocols | include router id
```

## OSPF config:
```bash
(config)# router ospf 10
(config-router)# router-id 1.1.1.1
(config-router)# end
# show ip protocols | include router id
```

## praktisk eksempel:
```bash
(config)# router ospf 10
(config-router)# network 10.10.1.0 0.0.0.255 area 0
(config-router)# network 10.10.1.4 0.0.0.3 area 0
(config-router)# network 10.10.1.5 0.0.0.3 area 0
```

## Alternativt kan man specificere ospf på det eksakte interface ip.
```bash
(config)# router ospf 10
(config-router)# network 10.10.1.0 0.0.0.0 area 0
(config-router)# network 10.10.1.4 0.0.0.0 area 0
(config-router)# network 10.10.1.5 0.0.0.0 area 0
```

## Sådan fjerner du ospf opsætningen igen:
```bash
(config)#router ospf 10
(config-router)# no network 10.10.1.1 0.0.0.0 area 0
(config-router)# no network 10.10.1.4 0.0.0.0 area 0
(config-router)# no network 10.10.1.5 0.0.0.0 area 0
```

## Configure OSPF using the ip ospf command:
```bash
(config-router)# interface gigabitethernet 0/0/0
(config-if)# ip ospf 10 area 0
(config-if)# interface loopback 0
(config-if)# ip ospf 10 area 0
```

## Passive interface command:
```bash
(config)# router ospf 10
(config-router)# passive-interface loopback 0
(config-router)# end
# show ip protocols
```

## Alternativt kan alle interfaces sættes til passiv med:
```bash
(config-router)#passive-interface default
```

## Du kan derefter vælge hvilke der ikke skal være passive med:
```bash
(config-router)#no passive-interface g0/0/0
```

## Skift til point-to-point:
```bash
(config)# interface GigabitEthernet 0/0/0
(config-if)# ip ospf network point-to-point
# show ip ospf interface gigabitethernet 0/0/0
```

## Configure OSPF Priority:
```bash
(config)# interface GigabitEthernet 0/0/0 
(config-if)# ip ospf priority 0-255 
(config-if)# end 
```

The DR and will be configured with a priority of 255. 
The BDR and will be left with the default priority of 1.
Routers not in the election is configured with a priority of 0.

## Default static route:
```bash
(config)# interface lo1
(config-if)# ip address 64.100.0.1 255.255.255.252 
(config-if)# exit
(config)# ip route 0.0.0.0 0.0.0.0 loopback 1
(config)# router ospf 10
(config-router)# default-information originate
(config-router)# end
```

## Indstil hello/dead intervaller: 
```bash
(config-if)# ip ospf hello-interval seconds
(config-if)# ip ospf dead-interval seconds
```

## Ryd ospf processen:
```bash
Ryd ospf processen:
```

## Reference Bandwith:
```bash
(config-router)# auto-cost reference-bandwidth Mbps
# show ip ospf interface gigabitethernet0/0/0
```

## Manually Set OSPF Cost Value:
```bash
(config)# interface g0/0/1
(config-if)# ip ospf cost 30
(config-if)# interface lo0
(config-if)# ip ospf cost 10
(config-if)# end
```