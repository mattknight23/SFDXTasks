# SFDX Tasks and Scripts
A collection of tasks and shell scripts for use with dx projects.

## Tasks 

To use the tasks just add them to the .vscode folder in any SFDX project

use cmd + b and select a task

### Tasks included
- Retrieve Package -- retrives a changeset or package from the default org
- Retrieve Package with usersname -- retrives a changeset or package from a specified org
- Unzip Retrieval -- unzips the retrievd file from the above 2 commands
- Convert Source to Metadata for Deployment -- converts SFDX source into MDAPI format for Deployment
- Convert Metadata to Source -- converts retrieved and unziped metadat into sfdx source format
- Zip Converted File -- Zips the converted file from a "Convert Source to Metadata for Deployment" tasks
- Deploy to Org -- Deploys zipped meta data to specified org
- Deploy to org with specified tests -- Deploys zipped meta data to specified org wiht specified tests
- Install Package -- Installs a package based one the package version id you supply
- List Installed Packages -- useful for getting the package version id needed for the above commands

## Scripts 

To use the scripts just add the scripst folder to the top level of your dx project

### scripts included
- orgSetup.sh  -- easily create and push your source to a scratch orgSetup

