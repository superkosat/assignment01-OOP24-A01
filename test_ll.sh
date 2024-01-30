#!/bin/bash

g++ -std=c++11 list_tests.h list_todo.h -o test_runner
chmod +x test_runner
./test_runner
rm test_runner
