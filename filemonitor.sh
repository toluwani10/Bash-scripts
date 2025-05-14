#! /bin/bash
FILE_TO_WATCH="/home/sam/Backup.sh" #Setiing a variable for the path of the file
if [ ! -f "$FILE_TO_WATCH" ]; then # If file does not exist
echo "File does not exist: $FILE_TO_WATCH"
exit 1  #Exit the script
fi
last_hash=$(md5sum "$FILE_TO_WATCH") #md5sum command used to check the file hash. it will notice any chnages on the hash
echo "Monitoring $FILE_TO_WATCH for changes...."
while true; do
sleep 5 
new_hash=$(md5sum "$FILE_TO_WATCH" )  
if [ "$new_hash" != "$last_hash" ]; then
echo "Alert: File has been modified at $(date)!"
last_hash=$new_hash
fi
done
