#!/bin/bash
echo "================continue================="
for i in {1..10}
do 
	if [[ "$i" -eq "5" ]];
       	then
	continue
	fi 
	echo "i = {$i}"
done



echo "================braek================="

for i in {1..10}
do 
	if [[ "$i" -eq "5" ]];
       	then
	break
	fi 
	echo "i = {$i}"
done
