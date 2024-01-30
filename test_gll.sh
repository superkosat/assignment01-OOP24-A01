#!/bin/bash

g++ -std=c++11 generic_list_tests.h generic_list_todo.h -o test_runner
chmod +x test_runner
./test_runner
rm test_runner
