#!/bin/bash

for i in yandex.ru vk.com google.com facebook.com
do	
 	ping -c5 -q $i &> /dev/null && echo "good" || echo "BAD"
done
