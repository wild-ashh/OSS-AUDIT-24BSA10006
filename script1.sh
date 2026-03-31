#!/bin/bash 
# Script 1: System Identity Report 
# By: ASIM YASH
# Variables 
STUDENT_NAME="ASIM YASHi" 
SOFTWARE_CHOICE="Python" 
# System info 
KERNEL=$(uname -r) 
USER_NAME=$(whoami) 
UPTIME=$(uptime -p) 
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2) 
DATE=$(date) 
# Display 
echo "Open Source Audit - $STUDENT_NAME" 
echo "Kernel  : $KERNEL" 
echo "User    
: $STUDENT_NAME" 
echo "Uptime  : $UPTIME" 
echo "Distro  : $DISTRO" 
echo "Date    
: $DATE" 
echo "License : Linux kernel uses GPL v2" 
