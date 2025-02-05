#!/bin/bash

# Source the codefile.sh to access the function
source ./codefile.sh

# Test 1: Test with 2, 3, 4 as the height, width, and length respectively
test_volume_1() {
    expected=24
    result=$(calculate_volume 2 3 4)
    if [ "$result" -eq "$expected" ]; then
        echo "Test 1 Passed: Volume is $result"
    else
        echo "Test 1 Failed: Expected $expected but got $result"
    fi
}

# Test 2: Test with 5, 6, 7 as the height, width, and length respectively
test_volume_2() {
    expected=210
    result=$(calculate_volume 5 6 7)
    if [ "$result" -eq "$expected" ]; then
        echo "Test 2 Passed: Volume is $result"
    else
        echo "Test 2 Failed: Expected $expected but got $result"
    fi
}

# Test 3: Test with 0 as height, should return 0
test_volume_3() {
    expected=0
    result=$(calculate_volume 0 3 4)
    if [ "$result" -eq "$expected" ]; then
        echo "Test 3 Passed: Volume is $result"
    else
        echo "Test 3 Failed: Expected $expected but got $result"
    fi
}

# Test 4: Test with all values 1
test_volume_4() {
    expected=1
    result=$(calculate_volume 1 1 1)
    if [ "$result" -eq "$expected" ]; then
        echo "Test 4 Passed: Volume is $result"
    else
        echo "Test 4 Failed: Expected $expected but got $result"
    fi
}

# Run the tests
test_volume_1
test_volume_2
test_volume_3
test_volume_4