#!/bin/bash
while true
do
echo "who do you want advice from?"
cat << options
bunny
tux
daemon
kitty
echo
quit
options
echo
read -p "Make choice: " x
echo 
if [ "$x" == quit ]
then 
break
fi
echo 
fortune | cowsay -f $x
done
