CXX = g++
CXXFLAGS = -std=c++11

test_ll: list_tests.cpp list_todo.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_runner
	./test_runner
	rm test_runner

test_gll: generic_list_tests.cpp generic_list_todo.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_runner
	./test_runner
	rm test_runner

test_stack: stack_tests.cpp stack_todo.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_runner
	./test_runner
	rm test_runner

test: test_ll test_gll test_stack
