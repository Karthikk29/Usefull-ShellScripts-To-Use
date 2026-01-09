#!/bin/bash
SOURCE="/home/karthik/data"
DESTINATION="/home/karthik/shellscript"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Create backup directory and copy files
mkdir -p $DESTINATION/$DATE
cp -r $SOURCE $DESTINATION/$DATE
echo "Backup completed on $DATE"
