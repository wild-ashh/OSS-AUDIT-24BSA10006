#!/bin/bash 
# Script 3: Disk and Permission Auditor 
# By: ASIM YASH
# Important system directories 
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") 
# Report heading 
echo "Directory Audit Report" 
# Loop through directories 
for DIR in "${DIRS[@]}"; do 
if [ -d "$DIR" ]; then 
PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}') 
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1) 
echo "$DIR => Permissions: $PERMS | Size: $SIZE" 
else 
echo "$DIR does not exist on this system" 
fi 
done 
# Check Python location 
CONFIG_DIR="/usr/bin/python3" 
if [ -e "$CONFIG_DIR" ]; then 
ls -l $CONFIG_DIR 
else 
echo "Python location not found" 
fi
