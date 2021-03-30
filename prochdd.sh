 #!/bin/bash
sto=100
busy=$(df -h | grep "/dev/mapper/vgubuntu-root" | awk '{print $5}' | sed 's/%//')
free=$(expr $sto - $busy)
echo " Svobodnogo mesta $free% "

