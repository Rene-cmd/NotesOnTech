here's an example Cisco switch configuration script:

```c
enable
configure terminal
hostname SWITCH_NAME
enable password ENABLE_PASSWORD
line vty 0 15
password LINE_PASSWORD
login
exit
interface GigabitEthernet0/1
switchport mode access
switchport access vlan 10
description VLAN 10 Access Port
exit
interface GigabitEthernet0/2
switchport mode access
switchport access vlan 20
description VLAN 20 Access Port
exit
interface GigabitEthernet0/3
switchport mode trunk
switchport trunk allowed vlan 10,20
description Trunk to Another Switch
exit
interface Vlan10
ip address 192.168.10.1 255.255.255.0
exit
interface Vlan20
ip address 192.168.20.1 255.255.255.0
exit
ip default-gateway 192.168.1.1
end
copy running-config startup-config
```

This script does the following:

1.  Enables privileged EXEC mode.
2.  Enters global configuration mode and sets the switch's hostname.
3.  Sets an enable password for privileged EXEC mode.
4.  Configures line passwords for console and virtual terminal access.
5.  Configures three interfaces: two access ports for VLAN 10 and VLAN 20, respectively, and a trunk port that allows both VLANs to pass through.
6.  Configures two VLAN interfaces with IP addresses.
7.  Sets the default gateway for the switch.
8.  Saves the configuration to non-volatile memory.

Note that you should replace `SWITCH_NAME`, `ENABLE_PASSWORD`, and `LINE_PASSWORD` with values of your own choosing. You should also adjust the IP addresses and VLAN numbers to match your network topology.