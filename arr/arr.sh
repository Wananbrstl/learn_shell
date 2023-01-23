#! /usr/bin/bash


arr=(0 1 2 3 4)

echo "use [*]"
echo "arr = (" ${arr[*]} ")"

echo "use [@]"
echo "arr = (" ${arr[@]} ")"

echo "arr length = " ${#arr[*]}
