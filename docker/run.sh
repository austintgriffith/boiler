#!/bin/bash
#usage: ./run.sh [ID] [GULP COMMAND]  [DOCKERIMAGEVERSION] [COMMAND]
if [ -z "$1" ]; then
	id="1";
else
	id=$1;
fi
if [ -z "$2" ]; then
	gulpCommand="gulp prod";
else
	gulpCommand=$2;
fi
#local html directory
app="${PWD}/../../";
#remove existing container
docker rm -f "helloworld"
#run
docker run --name="helloworld" -p 8888:8000 -e gulpCommand="$gulpCommand" -p 8822:22 -v $app:/root/app -d helloworld:$3 $4
