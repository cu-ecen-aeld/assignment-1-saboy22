#!/bin/sh


filedir=$1
searchstr=$2




if [ -d "$filedir" ] && [ "$searchstr" != "" ];
then
	
	filecount=$(find "$filedir" -type f | wc -l)
	linecount=$(find "$filedir" -type f -exec grep "$searchstr" {} \; | wc -l) 
	echo "The number of files are $filecount and the number of matching lines are $linecount"	
	
elif [ "$searchstr" != ""  ]
then
	echo "Please enter a string to search"
	exit 1	
else
	echo "Could not find inputed directory"
	exit 1 
fi
