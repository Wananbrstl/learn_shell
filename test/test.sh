#!/bin/bash

echo "====== test num ======"
num1=1
num2=2
if test $[num1] -ne $[num2]
then 
    echo "$num1 is not equal $num2"
else
    echo "$num1 equal $num2"
fi


echo "====== test string ======"
str1="ogod"
str2="good"
if test $str1 != $str2
then 
    echo "$str1 is not equal $str2"
else
    echo "$str1 equal $str2"
fi

echo "====== test file ======"
if test -e test.sh -a -x test.sh
then 
    echo "file test.sh is exit and test.sh is executable!"
else
    echo "file test.sh is not exit or test.sh is not executable!"
fi

