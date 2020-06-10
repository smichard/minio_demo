#!/bin/sh

echo 'calling an external script'
echo $NAME

# Do your build steps here. Creating temporary file below as a sample:
export CURRENT_TIMESTAMP=$(date +"%Y%m%d%H%S")
 
# Creating sample package file with a file name containing the new version number
tar -zcvf $NAME-$CURRENT_TIMESTAMP.tar.gz input

if [ $? -eq 0 ]
then
  echo "Successfully created artifact"
else
  echo "Failed to create artifact"
  exit 1
fi

cp $NAME-$CURRENT_TIMESTAMP.tar.gz file

figlet "done"