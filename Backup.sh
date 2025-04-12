#! /bin/bash
# This script will back up directory to a .tar.gz file with the current date
   # The path of the source directoory
Source_Dir="/home/sam/Bash-scripts"
   # the path of the directory to save the backup file 
 Backup_Dir="/home/sam/bashScripts"
 DATE=$(date +%F) 
 Backup_Name="backup_$DATE.tar.gz"
 tar -czf "$Backup_Dir/$Backup_Name" "$Source_Dir"
 echo "Successful"
