#!/bin/bash

num=0
while [ $num -le 10 ]
do
echo $num > forsed.txt
num=$(expr $num + 1)
done
