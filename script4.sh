#!/bin/bash 
# Script 4: Log File Analyzer 
# By: ASIM YASH
# Input values 
LOGFILE=$1 
KEYWORD=${2:-"error"} 
COUNT=0 
# Check if file exists 
if [ ! -f "$LOGFILE" ]; then 
echo "Error: File $LOGFILE not found." 
exit 1 
fi 
# Read file line by line 
while IFS= read -r LINE; do 
if echo "$LINE" | grep -iq "$KEYWORD"; then 
COUNT=$((COUNT + 1)) 
fi 
done < "$LOGFILE" 
# Summary output 
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE" 
# Last matching lines 
grep -i "$KEYWORD" "$LOGFILE" | tail -5
