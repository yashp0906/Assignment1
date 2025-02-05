#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 height width length"
  exit 1
fi

# Read the input arguments
height=$1
width=$2
length=$3

# Calculate the volume
volume=$((height * width * length))

# Output the volume
echo $volume