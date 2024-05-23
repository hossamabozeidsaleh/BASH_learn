#!/bin/bash
echo "chose an oprator " 
echo "+ (1)"    && echo "- (2)" && echo "* (3)" && echo "/ (4)"
echo "type number" 
read opreator 
	echo "enter first number" && read firstnumber 
       echo "enter scund number" && read scoundnumber

if [ "$opreator" -eq "1" ]
then 
reslt $(expr ${firstnumber} + ${scoundnumber}} 
       echo "$reslt"
fi 

