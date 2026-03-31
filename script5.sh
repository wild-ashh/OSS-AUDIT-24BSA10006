#!/bin/bash 
# Script 5: Open Source Manifesto Generator 
# By: ASIM YASH
# User questions 
echo "Answer three questions to generate your manifesto." 
echo "" 
read -p "1. Name one open-source tool you use every day: " TOOL 
read -p "2. In one word, what does freedom mean to you? " FREEDOM 
read -p "3. Name one thing you would build and share freely: " BUILD 
# File setup 
DATE=$(date '+%d %B %Y') 
OUTPUT="manifesto_$(whoami).txt" 
# Generate manifesto 
echo "On $DATE, I use $TOOL because open source means $FREEDOM to me. If I could 
contribute freely, I would build $BUILD for everyone." > $OUTPUT 
# Display result 
echo "Manifesto saved to $OUTPUT" 
cat $OUTPUT 
