#### Powershell:
```powershell
#we can choose the folders we would like to back up with this script#

# This will give the path of the foder that we want to backup from#

# in the case of needing to backup different files form different folders, we can create a text file where all the paths are set and then the path to that text file is set as filepath#

$filepath = "C:\backmeup"

$backupLocation = Get-ChildItem -Path $filepath

#give the target of backup files --> where we want to store them#

$StoredFilesPlace = " C:\Stored-Files"

# we can give our back up a name that will also inclued the date of the backup#

$backupname = "FileBackup $(get-date -Format "yyy-MM-dd hh-mm")"

# we need to go through the locations --> in this case we only want to bcakup the temp file#

foreach ($location in $backupLocation ) {

Write-Output "system is backing up $($location)"

if (-not (Test-Path "$StoredFilesPlace\$backupname")) {

New-Item -Path "$StoredFilesPlace\$backupname" -ItemType Directory

}

Copy-Item -Destination "$StoredFilesPlace\$backupname" -Recurse -Container

  
  

}

#compress the size of the file#

  

#compress-archive -path "$StoredFilesPlace\$backupname" -destinationpath "$StoredFilesPlace\$backupname.zip" -compressionlevel fastest
```

#### Bash:
```bash

```

#### Python:
```python

```