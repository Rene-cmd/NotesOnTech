	1.  Vælg New Virtual Machine -> Create new virtual machine -> Next
	2.  Skriv navn -> Next -> Next
	3.  Vælg storage -> Next -> Next
	4.  Vælg OS (Other > FreeBSD 11, 64 bit) -> Next
	5.  Under Disk Provisioning SKAL der vælges Thin Provisioning 
	6.  Vælg det rigtige netværk (DPG_xxx_) -> Next -> Finish

### Instalation i Headless env.

Alle underemner i denne guide er prompts for bruger input under installationen 
Der er ikke penslet ud hvad der sker mellem bruger input for at spare på blækken.
pilen er hvad brugeren skal vælge.

##### Eula
--> bare accepter at du ikke vil ændre på grundkoden for PFSense

##### Keymap Selection
--> Continue with default Keymap

##### Partitioning
--> Guided Disk Setup

##### Manual Configureation
--> No

##### Complete
--> Reboot

##### Should Vlans be set up now?
--> n

##### Enter the WAN interface name or 'a' for auto-detection
--> "wan interface skives i terminalen"
--> "skriv resterene lan netværk når du bliver spurgt"

##### Do you want to proceed? 
Tjek hvad der er sat op og om det er rigtig.
--> y

### Korrekt ip til interface.

![[Pasted image 20221101110940.png]]

##### Vælg 2) Set interface(s) IP address
--> vælg det primære lan interface
--> giv den ip span 192.168.{gruppe nummer}.1

##### Enter the new LAN IPv4 subnet bit count (1 to 31)
--> 26 
--> Enter
--> Enter

##### Do you want to enable the DCHP serverr on lan? 
--> n

##### Do you want to revert to HTTP as the webconfigurator protocol? y/n
--> y

### Opgradering:
![[Pasted image 20221101110940.png]]

##### Enter an option:
--> 13

##### Proceed with upgrade?
--> y

### Når i er færdige med installationen og den indledende konfiguration skal i:

	1.  Interfaces være "assigned".
	2.  Interfaces have korekte IP adresser (ISP-NET via DHCP).
	3.  Interfaces til LAN må **ikke** have DHCP enabled.

### VMWare tools på pfsense

Start Shell (option 8)

Skriv kommandoen pkg-static bootstrap -f -> Enter -> y -> Enter

Skriv pkg update -> Enter

Skriv pkg install open-vm-tools-nox11 -> Enter -> y -> Enter

Skriv pkg install pfsense-pkg-open-vm-tools -> Enter -> y -> Enter

Skriv Exit -> Enter

Genstart

Nu kan du gå tilbage til hoved filen.
[[1. Server Linux]]
