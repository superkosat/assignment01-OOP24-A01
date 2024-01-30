CXX = g++
CXXFLAGS = -std=c++11

test_ll: tests/list_tests.cpp src/list_todo.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_runner
	./test_runner
	rm test_runner

test_gll: tests/generic_list_tests.cpp src/generic_list_todo.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_runner
	./test_runner
	rm test_runner

test_stack: tests/stack_tests.cpp src/stack_todo.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_runner
	./test_runner
	rm test_runner

test: test_ll test_gll test_stack
