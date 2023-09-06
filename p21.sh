#!/bin/bash

#Prompt the user for afile or directory name
read -p "Enter a file or directory name: " file_or_dir

#Check if input exists
if [ ! -e "$file_or_dir" ]; then
	echo "File or directory '$file_or_dir' does not exist."
	exit 1
fi

#Determine the type of file or directory
if [ -f "$file_or_dir" ]; then
	file_type="Regular File"
elif [ -d "$file_or_dir" ]; then
	file_type="Directory"
else
	file_type="Other type of File"
fi


#Display the file type
echo "$file_or_dir is a $file_type."

#Perform 'ls' command with long listing option
ls -l "$file_or_dir"

 
