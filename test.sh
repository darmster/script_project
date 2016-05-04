#!/bin/bash
#Desc: testing my vimrc 

if [ $# -ne 1 ]; then
	echo Please add a value
	exit -1;
fi

MyValue=$1

echo Your value is $MyValue;
