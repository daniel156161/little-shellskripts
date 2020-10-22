#!/bin/bash

#Programmer: Daniel Dolezal
#Write Date: 22.10.2020
#Use: Easy git

if [ ! -z $1 ]; then
	git add -A
	git commit -m "$1"
	git push
else
	echo "No Commit Massage, USE $0 'Massage'"
fi
