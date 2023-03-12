#! /bin/bash  
   
#This is a Bash/shell script to group files into sub-folders, each sub-folder named with its common files name.

#For loop to get all the files names in the current directory, by find the name with .txt extension:
 for file_name in $(find -name \*.txt)
  do
#Assign the name of the file by using cut command into the directory variable:
    directory=$(echo $file_name | cut -d- -f 1)
#Creating the directory by mkdir command:
    mkdir -p $directory
#Moving the files to the sub-folder with the same name of the files:
    mv "$file_name" "$directory"
  done

