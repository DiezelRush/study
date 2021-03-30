 #!/bin/bash

find /etc/ -maxdepth 1 -type f |
	while read filename
	do
		if  [ -f $filename ]
			then 
			wc  $filename
		fi
done


 

