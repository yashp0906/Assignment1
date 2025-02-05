#!/bin/bash

# Test cases
test_cases=(
  "2 3 4 24"
  "1 1 1 1"
  "5 5 5 125"
  "10 2 3 60"
)

# Function to run tests
run_tests() {
  for test_case in "${test_cases[@]}"; do
    set -- $test_case
    height=$1
    width=$2
    length=$3
    expected_volume=$4

    # Run the volume calculation script
    actual_volume=$(./codefile.sh $height $width $length)

    if [ "$actual_volume" -eq "$expected_volume" ]; then
      echo "Test passed for input ($height, $width, $length)"
    else
      echo "Test failed for input ($height, $width, $length): expected $expected_volume, got $actual_volume"
    fi
  done
}

# Run the tests
run_tests