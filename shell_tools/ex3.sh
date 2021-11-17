#!/bin/bash

rm -f log.txt
touch log.txt
output=$( tail -n 1 log.txt )

while [ "$output" != "Something went wrong" ]
do
    ./script.sh | tee -a log.txt
    output=$( tail -n 1 log.txt )
done

