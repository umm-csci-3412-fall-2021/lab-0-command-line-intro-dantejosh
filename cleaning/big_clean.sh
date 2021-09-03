#!/usr/bin/env bash

#Set the variable tar_file to the first argument that is passed to the script
tar_file=$1

#Make a temporary directory and call it SCRATCH
SCRATCH=$(mktemp --directory)

#Uncompress the contents of the tar file passed in as an argument into the directory called SCRATCH
tar zxf "$tar_file" --directory "$SCRATCH"

#Go through all the files in the SCRATCH directory and get the names of the files that contain the phrase "DELETE ME!"  and then remove those files
grep -lr "DELETE ME!" "$SCRATCH" | xargs rm 

#cd into the SCRATCH directory or exit if the cd fails
cd "$SCRATCH" || exit

#Gets the name of the tar file that was passed in as an argument and removes the file extension from it
file_name=$(basename -s  .tgz "$tar_file")

#Compress the file that has the name stored in file_name and save to a file called cleaned_*value stored in file_name*  and put that file in our old working directory
tar zcf "$OLDPWD"/cleaned_"$tar_file" "$file_name" 
