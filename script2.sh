#!/bin/bash 
# Script 2: FOSS Package Inspector 
# By: ASIM YASH
# Package selection 
PACKAGE="python3" 
# Check if package is installed 
if dpkg -l | grep -q $PACKAGE; then 
echo "$PACKAGE is installed." 
dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description' 
else 
echo "$PACKAGE is not installed." 
fi 
# Package description 
case $PACKAGE in 
python3) echo "Python: community-driven language used worldwide" ;; 
esac
