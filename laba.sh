#!/bin/bash
LABA=/var/laba_check
		if [ -f "$LABA" ];
		then
		echo "File OK" | sudo tee /var/log/laba_check.log 
		else
		echo "FILE NOT FIND" | sudo tee /var/log/laba_check.log
		sudo touch /var/laba_check 
		fi

