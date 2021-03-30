#!/bin/bash


read -p "pervoe chislo": x
read -p "vtoroe chislo": y
read -p "tretie chislo": z
if  [ $x -gt $y -a $x -gt $z ]; then
 echo "Pervoe chislo $x is big"
exit 0
elif  [ $y -gt $x -a $y -gt $z ]; then
 echo "Vtoroe chislo $y is big"
exit 0
elif [ $z -gt $x -a $z -gt $y ]; then
 echo "Tretie chislo $z is big"
exit 0
fi
