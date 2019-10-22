#!/bin/bash

read -p 'Username: ' USERNAME
read -p 'Package / Changeset Name: ' PACKAGE_NAME 

sfdx force:mdapi:retrieve -r retrieval -p $PACKAGE_NAME -u $USERNAME
unzip retrieval/unpackaged.zip -d retrieval
sfdx force:mdapi:convert -r retrieval/$PACKAGE_NAME -d force-app
rm -r retrieval

echo 'Metadata retrievd and converted to source'