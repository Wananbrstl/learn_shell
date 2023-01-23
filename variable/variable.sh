#! /usr/bin/bash


echo "define variable:"
var1=Hello
var2="World"
var3='!'
echo "Use variable:"
echo ${var1} " "  ${var2} " " ${var3}

echo "string use"

str1="\"hello world\""
str2='\"hello world\"'

echo "define by \"\":"
echo ${str1}
echo "define by ''"
echo ${str2}

echo "unset str1"
unset str1
echo "use str1:"
echo $str1

echo "define readonly variable:"
readonly str1='read only variable'
echo ${str1}
# echo "modify :"
# str1="modify successfully" (error)
# echo ${str1}

echo "get length of str:"
echo "the length of str is : " ${#str1}


echo "get substr of 0-5:"
echo ${str1:0:4}
