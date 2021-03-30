#!/bin/bash
i=0
while [ $i -lt 8 ]
do
date=$(date +"%Y%m%d_%H%M%S")
mkdir /tmp/directory-$date
echo $? 
if [ $? -eq 0 ]
then
rmdir directory-*
echo $?
else
echo "gg"
fi
unset date
i=$(( $i + 1 ))
sleep 5s
done
