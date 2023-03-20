Spørgsmål til OSPF

Hvad skal der til for at danne naboskab?
	man kabler mellem to routere og laver dem begge en del af den samme ospf area og begge har 
	en uniq router id. de skal være på samme subnet. "MTU" 
	
Hvad er kommandoen for det?  Uden Default static Route?
```bash

```
Hvad skal der til for at OSPF kan skelne mellem 1 gigabit interface og 10 Gb interface?
	man skal gange med en facktor 100 indenfor hastigheds protokol da de er 1 og 1 som 
	standart
	
Hvorfor deler man op i Areas?
	man kan lave en ospf som hedder 10 og en der hedder 20 så er der 2 areas det gør
	man for at holde databaserne på en optimal størrelse så den ikke bliver for stor til routeren
	
Hvordan sikrer man, at en router bliver DR og BDR? Eller ikke?
	ip ospf priority 0–255
	0 udmældt
	255 DR
	
Hvor laver man _Summarization_ i et OSPF netværk?
	we configure them on ABR and ASBR
	show ip route ospf | b Gateway
	
Hvilke adresser kommunikerer OSPF på? OSPFv3?
	AllSPFRouters: IPv4 address 224.0.0.5 or MAC address 01:00:5E:00:00:05. All routers running OSPF should be able to receive these packets.
	
Hvordan sikrer man mod at en OSPF-router danner naboskab med uønskede routere?
	man laver det interface som den uønskede router sidder på til et passive ospf interface.
	
Kan man køre IPv4 under OSPFv3? Hvis Ja hvordan enables det så?
	ja det kan man man skal bare sørge for at den har en link local 
	
Hvad er router id? IPv4 og IPv6

Hvordan fortæller Edge routeren de andre OSPF routere om vejen ud på Internettet?

Hvad sker der, hvis to routere har samme **_Router-id_**?
	så vil der komme en fejl på ospf og vil derfor collidere hello packets 
	
Hvad vil det sige, at der er **_convergence_**?
	ospf er færdig med at dele data og alle routere har en ful linkstate database

Hvor vil man logisk placere Area 0 i et multiarea netværk?
	som en backbone man bygger areas ud fra det er best practice at have area 0 for sig selv 
	og bygge areas ud fra backbone
	
Undersøg STUB area og Not So Stubby Area. Hvad kan man dog bruge det til?
	A stub area is an area in which advertisements of external routes are not allowed, reducing the size of the database. A totally stubby area (TSA) is a stub area in which summary link-state advertisement (type 3 LSAs) are not sent. A default summary LSA, with a prefix of 0.0.0.0/0 is originated into the stub area by an ABR, so that devices in the area can forward all traffic for which a specific route is not known, via ABR.
	
En bruger har ringet ind med ingen Internetforbindelse. Du ved at der lige har været arbejde på netværket aftenen før. Du mistænker, at det kunne være en Routing fejl. Beskriv, hvordan du vil gribe fejl søgningen an. Det er et middelstort netværk med adskillige routere og switche.