#!/bin/bash

read -p 'Do you wnat to deploy to Inte? y/n: ' DeployInte
read -p 'Do you wnat to deploy to Staging? y/n: ' DeployStaging
read -p 'Do you wnat to deploy to Prod? y/n: ' DeployProd

sfdx force:org:list

# convert Source to metadata
sfdx force:source:convert --rootdir force-app --outputdir deployment
# zip converted source
zip -r -X deployment.zip deployment
# delete converted file
rm -r deployment
# deploy changes to specified username

if [ $DeployInte = 'y' ]
then
echo 'SFInte Starting'
sfdx force:mdapi:deploy --zipfile deployment.zip --targetusername csl@ekwis.com.sfinte -w 10
echo 'SFInte Deployed'
fi

if [ $DeployStaging = 'y' ]
then
echo 'SFStaging Stating'
sfdx force:mdapi:deploy --zipfile deployment.zip --targetusername csl@ekwis.com.sfstaging -w 10
echo 'SFStaging Deployed'
fi

if [ $DeployProd = 'y' ]
then
echo 'Prod Starting'
sfdx force:mdapi:deploy --zipfile deployment.zip --targetusername csl@ekwis.com -w 10 -l RunSpecifiedTests -r BOSUpdateDeviceHandlerTest,BOSUtilsTest,BOSHttpCalloutMockTest,BOSArcHandlerTest,BOSArcAddressHandlerTest
echo 'Prod Deployed'
fi
# delete zip file
rm deployment.zip

echo 'complete'