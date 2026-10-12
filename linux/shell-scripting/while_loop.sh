#!/bin/bash

counter=1

while [ $counter -lt 10  ]; do
    echo "Count: $counter"
    ((counter++))
done
