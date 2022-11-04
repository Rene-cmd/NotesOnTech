Configure and Verify NTP:
```bash
få vist enhedens tid- og dato-indstillinger.
# show clock detail

indstil en addresse hvor tid osv kan efterspørges.
dette behøver ikke at være en server, det kan være en enhed på netværket.
(config)# ntp server 209.165.200.225

verificer med
# show clock detail 

få vist de ure du er synkroniseret med + mere.
# show ntp associations 

# show ntp status
```

Configure Syslog Timestamp:
```bash
denne kommando: "(config)# service timestamps log datetime" bruges til at tvinge loggede events til at vise timestamps.
I eksemplet nedenunder vil der være dato og tid på "# shutdown" kommandoen på interface g0/0/0.
Men efter kommandoen er udført og interfacet bliver sat i "#no shutdown" vil der komme dato og tid på udskriften i cli'en.
(config)# interface g0/0/0
(config-if)# shutdown
(config-if)# exit
(config)# service timestamps log datetime
(config)# interface g0/0/0
(config-if)# no shutdown
```

*Vigtig viden!*
```bash
Router File Systems:
Det her i bund grund det samme som på et filsystem i Linux/Windows

alle tilgængelige filsystemer
# show file systems

flash file system
# dir

Switch File Systems:

view the file systems on a Catalyst switch
# show file systems

Use TFTP to Back Up and Restore a Configuration:

# copy running-config tftp
 Remote host []?192.168.10.254                         - skriv selv ip addressen på tftp-serveren ind!
 Name of the configuration file to write[R1-config]? R1-Jan-2019     - giv filen et navn!
 Write file R1-Jan-2019 to 192.168.10.254? [confirm]             - Y/N 

USB Ports on a Cisco Router:
tilgå et USB således:
# dir usbflash0: 

gem config til USB:
#copy running-config usbflash0:

The boot system Command:
To upgrade to the IOS image
(config)# boot system flash0:isr4200-universalk9_ias.16.09.04.SPA.bin
(config)# exit
#copy running-config startup-config
# reload
```
