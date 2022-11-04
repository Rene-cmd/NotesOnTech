WSL er en feature Windows har introduceret som giver dig lov til at køre en Linux-kernel i Windows. Det vil sige at du kan køre Windows og samtidigt arbejde i Linux via Windows terminal.

Det kan anbefales at opgradere dit system til Windows 11, da Windows terminal kun er udgivet som et preview til Windows 10.

Hvordan gør du:

Du starter Windows terminal (gør dig selv den tjeneste at køre som administrator), og skriver:

```
wsl –status
```

Er wsl slet ikke installeret er der et link [**_her_**](https://www.windowscentral.com/install-windows-subsystem-linux-windows-10) til hvordan du installerer det.

Dette gør du for at tjekke hvilken version af wsl du kører. Det kan anbefales at køre den seneste version. For at opdatere til den seneste version bruges kommandoen

```
wsl --update
```

Når det er klaret, er du klar til at installere en Linux Distribution. Den følgende kommando giver dig en liste over hvilke Linux-distros wsl understøtter.

```
Wsl  --list  --online
```

Vælg en distro fra listen brug dens navn i kommandoen:

```
Wsl  --install -d <distroname>
```

Så starter installationen af din valgte Distro.

For at køre din Distro kan du enten åbne PowerShell og skrive wsl i kommandoprompten. Alternativt kan du åbne din Linux terminal direkte fra Windows terminal, eller søge efter distributionen og åbne den fra startmenuen.

Er du i tvivl eller vil du bare have flere wsl kommandoer kan du bruge kommandoen:

```
Wsl --help
```

Den giver en fuld liste over dine muligheder i forhold til Windows Subsystem for Linux.

I tilfælde af at du har installeret Ubuntu 20.04 LTS / 18.04 LTS er der her et [**_link_**](https://codeburst.io/how-to-install-ubuntu-desktop-with-a-graphical-user-interface-in-wsl2-95911ee2997f) til hvordan du opsætter fjernskrivebord til din Ubuntu-desktop.

Hvis fjernskrivebordet ikke vil loade op så tjek lige din firewall og giv fuld adgang til VcXsrv.exe

Fyld gerne mere på denne guide hvis du føler der mangler noget, bare husk det skal give mening for en nybegynder.

Held og lykke...

Links:

En fyldestgørende guide til wsl.

[https://adamtheautomator.com/windows-subsystem-for-linux/](https://adamtheautomator.com/windows-subsystem-for-linux/)

Guide til installation af wsl:

[https://www.windowscentral.com/install-windows-subsystem-linux-windows-10](https://www.windowscentral.com/install-windows-subsystem-linux-windows-10)

Guide til Ubuntu remote desktop:

[https://codeburst.io/how-to-install-ubuntu-desktop-with-a-graphical-user-interface-in-wsl2-95911ee2997f](https://codeburst.io/how-to-install-ubuntu-desktop-with-a-graphical-user-interface-in-wsl2-95911ee2997f)