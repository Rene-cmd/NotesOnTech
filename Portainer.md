![[image-2.jpg]]

## Hvorfor Portainer?

1. Brugervenlig grænseflade: Portainer har en webbaseret grænseflade, der er nem at bruge og navigere i, hvilket gør den tilgængelig for brugere på alle færdighedsniveauer.

2. Multi-platform support: Portainer understøtter flere container management platforme, inklusive Docker, Kubernetes og Swarm, blandt andre.

3. Forenklet containerstyring: Portainer forenkler containerstyring ved at levere et intuitivt dashboard, der gør det muligt for brugere at administrere, implementere og overvåge deres containere nemt.

4. Rollebaseret adgangskontrol: Portainer leverer rollebaseret adgangskontrol, der gør det muligt for administratorer at kontrollere adgangen til containere baseret på brugerroller.

5. Sikkerhed: Portainer kommer med adskillige sikkerhedsfunktioner, der hjælper med at sikre, at containere er sikre, herunder billedbekræftelse, sårbarhedsscanning og adgangskontrol.

6. Overvågning og logning: Portainer leverer detaljerede logfiler og overvågningsværktøjer, der gør det muligt for brugere at spore containerbrug og ydeevne.

Udvidelsesmuligheder: Portainer er meget udvidelsesbar med en plugin-arkitektur, der giver brugerne mulighed for at tilføje funktionalitet efter behov.

## Instalation

1. Installer Docker på din værtsmaskine, hvis den ikke allerede er installeret. Du kan følge den officielle Docker installationsvejledning til dit specifikke operativsystem.

2. Når Docker er installeret, skal du åbne en terminal eller kommandoprompt og køre følgende kommando for at downloade og starte Portainer-beholderen:

```java
docker run -d -p 8000:8000 -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer-ce
```

Denne kommando vil downloade den seneste version af Portainer og starte den i en beholder med navnet "portainer". Det vil også knytte containerens port 9000 til din værtsmaskines port 9000, som er standardporten, der bruges af Portainer.

3. Når containeren kører, skal du åbne en webbrowser og gå til [http://localhost:9000](http://localhost:9000/) for at få adgang til Portainer-webgrænsefladen. Hvis du tilgår Portainer fra en ekstern maskine, skal du erstatte "localhost" med IP-adressen eller værtsnavnet på din Docker-vært.

4. Følg vejledningen for at oprette en admin-bruger og forbinde Portainer til dit Docker-miljø.

![[edge-mockup.webp]]

## Fane funktioner:

Fanen Hjem: Denne fane giver et overblik over Docker-miljøet, inklusive antallet af containere, images, volumener og netværk.

Fanen Dashboard: Denne fane giver en mere detaljeret visning af Docker-miljøet, inklusive CPU-brug, hukommelsesbrug og netværksbrug for hver container.

Fanen Containere: Denne fane giver dig mulighed for at administrere dine Docker-containere. Du kan se, starte, stoppe, sætte på pause og fjerne containere. Du kan også oprette nye containere, redigere eksisterende og administrere containerlogfiler.

Fanen Images: Denne fane giver dig mulighed for at administrere Docker-images. Du kan se, trække, skubbe og fjerne images. Du kan også oprette nye images og administrere billedtags.

Fanen Volumes: Denne fane giver dig mulighed for at administrere Docker-volumener. Du kan se, oprette, fjerne og inspicere diskenheder. Du kan også administrere volumentilladelser og backup-volumener.

Fanen Netværk: Denne fane giver dig mulighed for at administrere Docker-netværk. Du kan se, oprette, fjerne og inspicere netværk. Du kan også administrere netværkstilladelser og forbinde containere til netværk.

Stack-faneblad: Denne fane giver dig mulighed for at administrere Docker-stacke, som er grupper af tjenester, der er defineret i en YAML-fil. Du kan se, implementere, fjerne og administrere stakke.

Fanen App-skabeloner: Denne fane giver dig mulighed for at implementere foruddefinerede applikationer ved hjælp af Docker Compose eller Kubernetes. Du kan vælge mellem en række forskellige skabeloner, såsom WordPress, Joomla og Ghost.

Endpoint-faneblad: Denne fane giver dig mulighed for at administrere Docker-endepunkter. Du kan se, oprette og fjerne slutpunkter. Du kan også administrere slutpunktindstillinger, såsom TLS-certifikater og godkendelse.