#!/bin/bash

g++ -std=c++11 stack_tests.h stack_todo.h -o test_runner
chmod +x test_runner
./test_runner
rm test_runner
