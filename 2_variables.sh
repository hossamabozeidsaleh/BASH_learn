#!/bin/bash
#this is a var_1
x=hossam
echo $x     
echo "my user name is ${x}"
echo "my user name is ${x}-Abozeid"
#this is a var_2
num=22
num=$(expr ${num} + 1)
echo "my age ${num}"
