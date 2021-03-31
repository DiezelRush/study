#!/bin/bash

#ARCHIV="$FILENAME".gz
#FILENAME="$1"

ls -li $1 | awk '{print $1}' > /tmp/inode.txt
INODE=`sudo cat /tmp/inode.txt`
find /home/ -inum $INODE > /tmp/inodefind.txt
i=`sudo cat /tmp/inodefind.txt`

if [ -d ~/TRASH/ ]
	then echo
	else echo "no dir"
		mkdir -p TRASH
fi
if [[ -h $1 ]]
	then
		readlink $1 
		rm $1
		echo "symlink del"
elif [[ ! $i -eq 1 ]]
	then rm $1
		echo "hardlink del"
	fi
     else gzip -c $1 > ~/TRASH/$1.gz && rm $1
echo "exit"
fi


