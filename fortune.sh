#!/bin/bash
##i=0
num=1
touch fortune.txt
for (( i=0; i<=10; i+1 ))
##while [ $i -lt 10 ]
do
fortune >> fortune.txt
i=$(( i + 1 ))
done
while read line
do
if [ $(( $num + 1  )) ] 
then
echo "line $i : $line"

fi
#num=$(( $num + 1 ))
done < fortune.txt
