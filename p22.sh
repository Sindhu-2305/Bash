#!/bin/bash

#Check if the argument is provided
if [ $# -ne 1 ]; then
	echo "Usage: $0 <file_or_directory>"
	exit 1
fi

file_or_dir="$1"

#Check if the input exists
if [ !-e "$file_or_dir" ]; then
	echo "File or directory '$file_or_dir' does not exist."
	exit 1
fi


#Determine the type of file or directory
if [ -f "$file_or_dir" ]; then
	echo "$file_or_dir is a Regular File."
	num=1

elif [ -d "$file_or_dir" ]; then
	echo "$file_or_dir is a Directory."
	 num=1
else
	echo "$file_or_dir is another type of file."
	num=2
fi

echo "status code: "
echo "$num"
exit $num
