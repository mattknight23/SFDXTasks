#!/bin/bash

read -p 'Username: ' USERNAME
read -p 'Package / Changeset Name: ' PACKAGE_NAME 

sfdx force:mdapi:retrieve -r retrieval -p $PACKAGE_NAME -u $USERNAME
unzip retrieval/unpackaged.zip -d retrieval
cp retrieval/$PACKAGE_NAME/package.xml manifest
rm -r retrieval
rm -r force-app/main/default
sfdx force:source:retrieve -x manifest/package.xml