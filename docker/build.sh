#!/bin/bash
#usage: ./build.sh [DOCKERIMAGEVERSION]
#if package.json doesn't exist, copy it in
FILE="package.json"
if [ -f $FILE ];
then
   echo "File $FILE exists."
else
   echo "File $FILE does not exist, copying..."
	 cp ../$FILE $FILE
fi
#copy in package json if it is different
cmp -s package.json ../package.json > /dev/null
if [ $? -eq 1 ]; then
	echo "package.json has updated... copying...";
    cp ../package.json .
else
    echo "package.json is unchanged.";
fi
echo "Destroying any running versions to avoid linked node_modules getting built...";
docker stop helloworld
echo "Building helloworld container...";
docker build -t helloworld:$1 .
