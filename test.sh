#!/bin/bash

echo "Running tests..."
echo

if [ "$1" == "test_list" ]; then
    make test_list
    if ./test_list | grep -q 'failed'; then
      echo "Fail: List program did not exit zero"  
      exit 1
    else
      echo "Pass: List program exited zero"
      
    fi
    exit $?
elif [ "$1" == "test_stack" ]; then
    make test_stack
    if ./test_stack | grep -q 'failed'; then
      echo "Fail: Stack program did not exit zero"
      exit 1
    else
      echo "Pass: Stack program exited zero"
    fi
    exit $?
elif [ "$1" == "test_generic_list" ]; then
    make test_generic_list
    if ./test_generic_list | grep -q 'failed'; then
      echo "Fail: Generic program did not exit zero"
      exit 1
    else
      echo "Pass: Generic program exited zero"
    fi
    exit $?
else
    echo "Invalid test target. Usage: $0 <test_target>"
    exit 1
fi

# echo
# echo "All tests passed."
# exit 0
