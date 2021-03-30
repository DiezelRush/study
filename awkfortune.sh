#!/bin/bash
#num=0
rand=$(awk '{srand(); int(rand()*100)}')
touch awkfortune1.txt
while true
do
for ((i=0; i<=10; i++))
do
fortune >> awkfortune1.txt
i=$(( i + 1 ))
done
awk 'NR==1{print}' awkfortune1.txt
sleep `$rand`s
done 

