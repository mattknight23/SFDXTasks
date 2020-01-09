#!/bin/bash
for file in force-app/main/default/profiles/*.xml; do
sed -i '' '/<userPermissions>/,/<\/userPermissions>/d' "$file"
done