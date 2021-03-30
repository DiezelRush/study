#!/bin/bash

if [ $# -ne 1 ]
	then
	echo "2 arg nedded"
	exit 1	
fi

if [ ! -f $1 ]
then
	echo "error"
exit 1
fi
 

if 
	cp $1 ~/Документы
echo "$1 succes"
then 
exit 0
else 
echo "erroe"
exit 1
fi
