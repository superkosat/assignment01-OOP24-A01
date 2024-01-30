#!/bin/bash

echo "Running tests..."
echo

make test_list test_stack test_generic_list

output=$(./test_list)

if [ $? -eq 0 ]; then
  echo "Pass: List program exited zero"
else
  echo "Fail: List program did not exit zero"
  exit 1
fi


output=$(./test_stack)
if [ $? -eq 0 ]; then
  echo "Pass: Stack program exited zero"
else
  echo "Fail: Stack program did not exit zero"
  exit 1
fi

output=$(./test_generic_list)
if [ $? -eq 0 ]; then
  echo "Pass: Generic list program exited zero"
else
  echo "Fail: Generic list program did not exit zero"
  exit 1
fi

echo
echo "All tests passed."
exit 0
