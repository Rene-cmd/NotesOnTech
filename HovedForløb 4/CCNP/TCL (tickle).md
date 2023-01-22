```tcl
foreach ipaddr { 
	11.11.11.1 
	11.11.21.1 
	11.11.21.2 
	172.16.0.2
	172.16.10.2
	} { ping $ipaddr}
```

```bash
#!/usr/bin/expect

	set timeout 20
	set username "Admin"
	set password "cisco1234"
	set 
```

```bash
#!/usr/bin/expect

# script for router setup


	hostname R2
	no ip domain-lookup
	no ip domain-lookup
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