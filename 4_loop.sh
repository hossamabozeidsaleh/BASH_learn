#!/bin/bash
for i in {1..4}
do
	echo "hello"
done

echo "========================================================"

for i in 10 20 20 40 
do 
	echo "heloo $i"
done

echo "========================================================"

for i in * 
do 
	echo "file : $i"
done


echo "========================================================"

for l in {1..100}
do 
[ "$l" -eq "10" ] && echo "this is number star" ||echo "this is number : $l" 
if [ "$l" -eq "99" ]
then echo "this is number star"
fi
 
done

