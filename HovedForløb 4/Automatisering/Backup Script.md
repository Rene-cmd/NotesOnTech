#### Opgave:

## Fullbackup

### Powershell 

```powershell
# Core settings - you will need to set these 
$mysql_server = "IP address of the machine where MySQL database is hosted"
$mysql_user = "username" 
$mysql_password = "password" 
$backupstorefolder= "E:\BackupPath\" 
$dbName = "wikidb"

mysqldump -u root -p[root_password] [database_name] > dumpfilename.sql

```

### Bash
mysql: 
```bash
#!/bin/sh

# (1) set up all the mysqldump variables
FILE=minime.sql.`date +"%Y%m%d"`
DESTINATION=xxx
DBSERVER=127.0.0.1 # this lies on the server that it makes backups for 
DATABASE=XXX
USER=XXX
PASS=XXX
PATH=XXX

cd /$PATH/

mysqldump --opt --protocol=TCP --user=${USER} --password=${PASS} --host=${DBSERVER} ${DATABASE} > ${FILE}

xz -v $FILE

cp /$PATH/$FILE.xz /$DESTINATION
sleep 14
rm $FILE
```

#### CRONTAB

```bash
0 5 * * * /home/al/bin/mysql-database-dump.sh
```
#### Why xz?
```bash
-rw-rw-r-- 1 shs shs 103270400 Apr 16 14:01 bigfile
------------------------------------------------------
-rw-rw-r-- 1 shs shs 18115234 Apr 16 13:59 bigfile.bz2    ~17%
-rw-rw-r-- 1 shs shs 21606751 Apr 16 14:00 bigfile.gz     ~21%
-rw-rw-r-- 1 shs shs 21608322 Apr 16 13:59 bigfile.tgz    ~21%
-rw-rw-r-- 1 shs shs 13427236 Apr 16 14:00 bigfile.xz     ~13%
-rw-rw-r-- 1 shs shs 21606889 Apr 16 13:59 bigfile.zip    ~21%
```
### Python

```python
#!/usr/bin/python

###########################################################
#
# This python script is used for mysql database backup
# using mysqldump and tar utility.
#
# Written by : Rahul Kumar
# Website: http://tecadmin.net
# Created date: Dec 03, 2013
# Last modified: Aug 17, 2018 
# Tested with : Python 2.7.15 & Python 3.5
# Script Revision: 1.4
#
##########################################################

# Import required python libraries

import os
import time
import datetime
import pipes

# MySQL database details to which backup to be done. Make sure below user having enough privileges to take databases backup.
# To take multiple databases backup, create any file like /backup/dbnames.txt and put databases names one on each line and assigned to DB_NAME variable.

DB_HOST = 'localhost' 
DB_USER = 'root'
DB_USER_PASSWORD = '_mysql_user_password_'
#DB_NAME = '/backup/dbnameslist.txt'
DB_NAME = 'db_name_to_backup'
BACKUP_PATH = '/backup/dbbackup'

# Getting current DateTime to create the separate backup folder like "20180817-123433".
DATETIME = time.strftime('%Y%m%d-%H%M%S')
TODAYBACKUPPATH = BACKUP_PATH + '/' + DATETIME

# Checking if backup folder already exists or not. If not exists will create it.
try:
    os.stat(TODAYBACKUPPATH)
except:
    os.mkdir(TODAYBACKUPPATH)

# Code for checking if you want to take single database backup or assinged multiple backups in DB_NAME.
print ("checking for databases names file.")
if os.path.exists(DB_NAME):
    file1 = open(DB_NAME)
    multi = 1
    print ("Databases file found...")
    print ("Starting backup of all dbs listed in file " + DB_NAME)
else:
    print ("Databases file not found...")
    print ("Starting backup of database " + DB_NAME)
    multi = 0

# Starting actual database backup process.
if multi:
   in_file = open(DB_NAME,"r")
   flength = len(in_file.readlines())
   in_file.close()
   p = 1
   dbfile = open(DB_NAME,"r")

   while p <= flength:
       db = dbfile.readline()   # reading database name from file
       db = db[:-1]         # deletes extra line
       dumpcmd = "mysqldump -h " + DB_HOST + " -u " + DB_USER + " -p" + DB_USER_PASSWORD + " " + db + " > " + pipes.quote(TODAYBACKUPPATH) + "/" + db + ".sql"
       os.system(dumpcmd)
       gzipcmd = "gzip " + pipes.quote(TODAYBACKUPPATH) + "/" + db + ".sql"
       os.system(gzipcmd)
       p = p + 1
   dbfile.close()
else:
   db = DB_NAME
   dumpcmd = "mysqldump -h " + DB_HOST + " -u " + DB_USER + " -p" + DB_USER_PASSWORD + " " + db + " > " + pipes.quote(TODAYBACKUPPATH) + "/" + db + ".sql"
   os.system(dumpcmd)
   gzipcmd = "gzip " + pipes.quote(TODAYBACKUPPATH) + "/" + db + ".sql"
   os.system(gzipcmd)

print ("")
print ("Backup script completed")
print ("Your backups have been created in '" + TODAYBACKUPPATH + "' directory")
```


## Incremantal Backup

### Bash
```bash
#!/bin/bash

#####################################
#
#
#
#
#
#
#
#
```

### Powershell
```Powershell

```

### Python
```python

```
