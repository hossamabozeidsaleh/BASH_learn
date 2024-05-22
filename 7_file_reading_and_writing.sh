#!/bin/bash 

# Print the word hello inside a file testfile.txt
# (white) to file
read username
while
	[[ "$username" != "" ]]
	echo $username >> users.txt
	read username
done

# (Read) the file line by line 
while read line
do
       	echo $line
done < users.txt
