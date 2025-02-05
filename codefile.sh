#!/bin/bash

# Function to calculate the volume of a rectangular prism
calculate_volume() {
    local height=$1
    local width=$2
    local length=$3
    echo $((height * width * length))
}