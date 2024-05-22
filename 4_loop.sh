#!/bin/bash
for i in {1..4}
do
	echo "hello"
done



for i in 10 20 20 40 
do 
	echo "heloo $i"
done


for i in * 
do 
	echo "file : $i"
done



for i in {1..100}
do 
	if [[ ("$i" -ge "10") && ("$i" -le "50") ]]
	then echo "i = $i"
	fi 
done
