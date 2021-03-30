
#!/bin/bash
##today=$(date +'%d-%m')

##if [ $today = 31-12 ]
#then
##echo "Happy year"
##else 
##echo "today is $today"
##fi




today=$(date +'%Y')
echo $today
read -p "Vash god: " x
 
echo $(expr "$today" - "$x")
