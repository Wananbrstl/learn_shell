#! /usr/bin/bash

echo "=======================test input args======================="
echo "input " $# " args"
for ((i = 0; i < $#; i++)); do
    echo "${i}"
done

echo "=======================test current process id======================="
echo "current process id is :" ${$}


echo "=======================test last exit code======================="
echo "last exit code is : "  $?

echo "=======================test command======================="
echo $(echo hello)
echo `echo hello`

