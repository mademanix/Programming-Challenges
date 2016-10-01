#!/bin/sh

i=1

if [ $# -lt 1 ]
then
    echo "too few arguments (1 expected)"
    exit 1
fi

while [ $i -le $1 ]; do

    divide_by_3=$[i % 3]
    divide_by_5=$[i % 5]

    if [ $divide_by_3 -eq 0 ] 
    then
        echo -ne "Fizz "
    fi

    if [ $divide_by_5 -eq 0 ] 
    then
        echo -ne "Buzz "
    fi

    if [[ $divide_by_3 -ne 0 ]] && [[ $divide_by_5 -ne 0 ]] 
    then
        echo -ne "$[i] "
    fi
    i=$[i + 1]
done

echo

