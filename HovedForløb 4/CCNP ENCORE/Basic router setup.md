a sample configuration script for a Cisco router:

```c
enable
configure terminal
hostname MyRouter
interface gigabitethernet0/0
ip address 192.168.1.1 255.255.255.0
no shutdown
exit
interface serial0/0/0
ip address 10.1.1.1 255.255.255.0
clock rate 64000
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 192.168.1.254
line console 0
password mypassword
login
exit
line vty 0 4
password mypassword
login
exit
end
write memory
```

This script does the following:

-   Enables privileged mode
-   Enters configuration mode
-   Sets the hostname to "MyRouter"
-   Configures interface GigabitEthernet0/0 with an IP address of 192.168.1.1 and subnet mask of 255.255.255.0, and brings it up
-   Configures interface Serial0/0/0 with an IP address of 10.1.1.1 and subnet mask of 255.255.255.0, sets the clock rate to 64000, and brings it up
-   Configures a default route to send all traffic to the gateway at 192.168.1.254
-   Configures the console and VTY lines with a password of "mypassword" and enables login authentication
-   Exits configuration mode
-   Saves the configuration to memory

Note that you should adjust the IP addresses and passwords to match your own network and security requirements.