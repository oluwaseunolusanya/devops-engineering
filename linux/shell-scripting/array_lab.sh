#!/bin/bash

# Define an array - names
names=("Alice" "Bob")
names+=("Alex")

echo "All names: ${names[@]}"

for name in ${names[@]}; do
    echo $name
done
