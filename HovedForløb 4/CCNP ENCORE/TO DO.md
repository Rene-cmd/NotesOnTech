- [x] Security
- [ ] Configure passwords to be encrypted
- [ ] Configure SSHv2 to all equipment (no telnet access)
Use a domain of choice if not specified
- [ ] Configure authentication on all routing protocols (SHA-256 on EIGRP!)
-  IPv4 IGPs done
-  IPv6 IGPs done
Only allow ssh from Management LAN (vty) to all equipment (solve with a standard ACL!)
- [ ] IPv4 done
- [ ] IPv6 done
- [ ] Do not allow RFC1918 IPs into the ISP network
- [ ] Configure all equipment to send Syslog messages to your Syslog server
- [ ] Don’t allow Guest users to access the Intranet web server
- [ ] Configure Extended ACL that limit the Branch Guest LAN only to be able to access Guest LANs
- [ ] IPv4 done
- [ ] IPv6 done
- [ ] Configure SPAN on one of the switches making it possible to connect a PC with wireshark software on one port to watch what is happening on another port
- [ ] Which command(s) will you use to test the correct function?

```Cisco iso
# security
access-list 1 permit 172.16.1.0 0.0.0.255 
access-list 1 permit <"ipv6">
access-list 1 deny any

line vty 0 15
 access-class 1 in
 transport input ssh
# SPAN
enable 
configure terminal
monitor session 1 
source interface GigabitEthernet1/0/1 
destination interface GigabitEthernet1/0/2 
end
```
- [ ] Configure HSRP according to L3 drawing
```bash
#router 1
interface vlan 10
standby version 2
standby 1 ip 192.168.10.10
standby 1 priority 120
standby 1 preempt

#router 2
interface vlan 10
standby version 2
standby 1 ip 192.168.10.10
standby 1 priority 100
standby 1 preempt

```
- [ ] Configure NAT -Vlan
- [ ] Configure NAT webserver
