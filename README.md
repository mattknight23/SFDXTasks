# SFDX Tasks and Scripts
A collection of tasks and shell scripts for use with dx projects.

## Tasks 

To use the tasks just add them to the .vscode folder in any SFDX project

use cmd + b and select a task

- retrieve packages
- convert source / metadata
- zip / unzip
- deploy
- install packages
- list installed packages
- list dev hub packages
- list dev hun package versions

## Scripts 

To use the scripts just add the scripst folder to the top level of your dx project

run using sh <script path>

e.g. ```sh users/mattknight/documents/myproject/scripts/deployToOrg.sh```

### scripts included
- orgSetup.sh  -- easily create and push your source to a scratch orgSetup
- deployToOrg.sh -- deploys your dx source to an org 

