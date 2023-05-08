# Cockpit installation

Først vil vi gerne sikre os der er opdateret apt reposotory det kan gøres med komandoen:

```
sudo apt update && sudo apt upgrade
```

Nu er vi sikre på at vi har det nyeseste i reposetory kan vi begynde at installere server dele på den ubuntu server som er sat op

## cockpit hoved server del

Server web grafical user interface, her kan vi få en grafisk adgang til ubuntu server, i stedet for at kikke på en rå terminal

```
sudo apt-get install cockpit
```

Cockpit er nu installeret men køre ikke der skal gives en kommando til at få cockpit startet.

```
sudo systemctl start cockpit 
```

Nu burde der være en web gui man kan tilgå på serverens ip addresse og port 9090

men hvis man vil sikre sig at cockpit køre kan man give commandoen:

```
sudo systemctl status cockpit 
```

Der burde komme en oversigt over serveren og hvis det er gjort rigtig skulle den havde en active status som billedet nedenuder

![How to Install or Enable Cockpit on CentOS 8 Stream - LinuxCapable](https://www.linuxcapable.com/wp-content/uploads/2021/12/cockpit-systemctl-status-ok-centos-8-stream.png)

## Cockpit-machines

Nu er der mulighed for at lege med serveren men der er ikke mulighed for at tilføje virtuelle maskine eller docker der skal først sættes op

Først viratulle maskeiner her skal der gives en kommando til at køre machines som er vm manager som samtidig kobles på cockpit interfacet:

```
sudo apt install cockpit-machines 
```

Dette installere en vm server og samtidig tilknytter den til cockpit, der skal dog ikke laves en start på servicen da der allerede er sat cockpit op.

## Docker install

Der skal installeres docker på ubuntu serveren som en egen processer, den skal hvade ubuntu adgang men kan ikke direkte kobles på cockpit før den er på serveren.

```
sudo apt-get install docker.io 
```

Nu er den installeret og er oppe og køre, men den har ikke en bruger mappe så det skal der oprettes det kan gøres ved at copiere serverbrugeren til den mappe som docker bruger, når den ikke er oprettet bliver den det automatisk når man gør det på den måde.

```
sudo usermod -aG docker skplinux($username) 
```

Nu er der docker på serveren men hvis man kikker på cockpit web gui kan man ikke tilgå docker, da der ikke er et link mellem docker.io og cockpit så det skal der laves.

Den næste komando henter install filerne som skal bruges til opsætning af cockpit-docker

```
wget https://launchpad.net/ubuntu/+source/cockpit/215-1~ubuntu19.10.1/+build/18889196/+files/cockpit-docker_215-1~ubuntu19.10.1_all.deb 
```

Nu er der henter filer men de skal også lige installeres det kan gøres ved:

```
sudo apt install ./cockpit-docker_215-1~ubuntu19.10.1_all.deb 
```

## kilder

[Ubuntu 20.04 LTS (Focal Fossa) Server Installation Guide](https://www.linuxtechi.com/ubuntu-20-04-lts-server-installation-guide/)

[How to Install Cockpit Web Console on Ubuntu 20.04 Server](https://www.linuxtechi.com/how-to-install-cockpit-on-ubuntu-20-04/)

[Managing KVM Virtual Machines with Cockpit Web Console in Linux](https://www.tecmint.com/manage-kvm-virtual-machines-using-cockpit-web-console/)

[How to add container management to Cockpit - TechRepublic](https://www.techrepublic.com/article/how-to-add-container-management-to-cockpit/)

[Create a New Sudo-enabled User on Ubuntu 20.04 | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-create-a-new-sudo-enabled-user-on-ubuntu-20-04-quickstart)

### Optional settings for network

Der er fra start en fejl i server netværks opsætningen da man fra ubuntu 19.04 til 20.04 har ændret på hvilket nætværks program man køre hvilket cockpit ikke er klar over så man skal give serveren mulighed for at kunne se den nye vej ind.

![](file:///C:/Users/rene2377/Downloads/MicrosoftTeams-image.png)

```
cd /etc/netplan/
```

Her efter åbens filen 00-installer-config.yaml

```
sudo nano 00-installer-config.yaml
```

Der skal laves optional ruling til alle de interfaces som ikke er aktivt i brug og skiftes rendere til networkmanager

```
reneder: NetworkManager
```

# Pi-Hole Installation

Der er flere muligheder for at installere Pi-Hole, her viser vi en metode, der er flere måde i linket i bunden af guiden.

Til at starte med laver vi en klon af Pi-Holes github-repository

```
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
```

det næste trin i installationen er at rykke dit working directory over i den ny-hentede github klon.

```
cd "pi-hole/automated install/"
```

Nu skulle du gerne have ditbrugernavn@dinlocalhost:~/pihole/automated install $ stående ved din kommandoprompt.

så kører du kommandoen:

```
sudo bash basic-install.sh
```

så starter installationen af Pi-hole på din enhed.

Du vil blive prompted af installation når den er færdig og bekræfte nogle oplysinger (ip-addresse etc.).

# Dokumentation

https://docs.pi-hole.net/