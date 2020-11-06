#!/bin/bash

#Programmer: Daniel Dolezal
#Write Date: 22.10.2020
#Use: Easy git

folder=$1
massage=$2

if [ ! -z $folder ]; then
 echo "$folder : $massage"
 if [ -d $folder/.git ]; then
  cd $folder
  #Add all Files
  echo "Added all changed Files"
  git add -A
  #Commit
  git commit -m "$massage"
  #Upload all Files
  echo "Upload files to github"
  git push
 else
  echo "No Git Repo"
 fi
else
  echo "USE: $0 folder 'Commit Text like this' "
fi
