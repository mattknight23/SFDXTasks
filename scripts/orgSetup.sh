#!/bin/bash

DURATION=7
ALIAS="MYSCRATCHORG"
PACKAGE_VERSION_ID=""

if [ "$#" -eq 1 ]; then
  DURATION=$1
fi

#Create scratch org with a custom alias
sfdx force:org:create -a $ALIAS -s -f config/project-scratch-def.json -d $DURATION

#Set default org 
sfdx force:config:set defaultusername=$ALIAS

#Optionally install packages
#sfdx force:package:install -p $PACKAGE_VERSION_ID -w 10

#Push source to scracth org
sfdx force:source:push

#Open scracth org
sfdx force:org:open -p /lightning/page/home

#Feedback to user
echo "Org is set up"