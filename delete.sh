#!/bin/bash

#ARCHIV="$FILENAME".gz
#FILENAME="$1"

if [ -d ~/TRASH/ ]
then echo
else echo "no dir"
mkdir -p TRASH
fi
gzip -c $1 > ~/TRASH/$1.gz && rm $1
