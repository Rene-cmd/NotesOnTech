```bash

#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

# What to backup. 
backup_files="/home /etc /root /boot /opt"

# Where to backup to.
dest="/mnt/sda5"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
#tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
#ls -lh $dest

```

```powershell
# Creates a backup of C: and all required partitions and stores the backup on F:
wbAdmin start backup -backupTarget:F: -include:C: -allCritical -quiet

# Creates a backup of C: and all required partitions and stores the backup on a remote computer
wbAdmin start backup -backupTarget:\\[Remote-Computer]\[Share] -include:C: -allCritical –quiet
```