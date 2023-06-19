#!/bin/sh

writefile=$1
writestring=$2

if [ "$writefile" = "" ] #&& [ "$writestring" = "" ];
then
	echo "Please add a valid path"
	exit 1

elif [ "$writestring" = "" ]
then
	echo "Please add a string to be written to the file"
	exit 1
elif [ -f "$writefile" ] && [ "$writestring" != "" ]
then
	echo "$writestring" | cat > "$writefile"

else
	mkdir -p "$(dirname $writefile)" && touch "$writefile"
	echo "$writestring" | cat > "$writefile"
fi
