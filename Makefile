
CXX = g++
CXXFLAGS = -std=c++11

test_list_stack: test_list_stack.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_list_stack
	./test_list_stack
	rm test_list_stack

test_gll: test_generic_list.cpp 
	$(CXX) $(CXXFLAGS) $^ -o test_generic_list
	./test_generic_list
	rm test_generic_list

test: test_list_stack test_gll
