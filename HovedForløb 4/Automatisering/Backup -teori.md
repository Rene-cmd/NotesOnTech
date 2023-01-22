•Installér valgfri Linux distribution

•Opret følgende eksempel data:

	•Brugerdata(I må gerne lave filer der fylder noget)

	•Data fra service (Apache, Mysql, eller lign.) 

•Opret følgende backup scripts:

	•Full backup

	•Incremental backup

•Differential  backup

•- Go Nuts, design jeres eget all in wonder script(s)

•Rsync er et godt valg at kigge på

• Brug noget tid på design og research

•Test ved at restore!

---
•FIFO – First in First out

•Backup gemmes i pre-defineret antal dage på friske medier, hvorefter man begynder at overskrive tidligere som navnet siger. Første backup slettes og overskrives. 

•Daglig terminologi: Vi gemmer data i 14 dage max

•

•Grandfather father Son(GFS)

•3 eller flere backup rotationer

•Daily - FIFO

•Weekly – Weekly Rotation

•Monthly – Monthly Rotation

•

•Kvartals, halvårs og årlige backups er i rotation og gemt separat  

•

•

•Er der flere ?? ( research i 15 min )