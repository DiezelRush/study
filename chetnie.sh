

#!/bin/bash
num=1
while [ $num -lt 20 ]
do 
num=$(expr $num + 1)
if [ $(( $num % 2 )) -eq 0 ] 
then
echo $num
fi
done

