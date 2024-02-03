CXX = g++
CXXFLAGS = -std=c++11

test_list: test_list.cpp list_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_list
	./test_list | grep -q 'failed' || echo "Pass: List program exited zero"

test_stack: test_stack.cpp stack_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_stack
	./test_stack | grep -q 'failed' || echo "Pass: Stack program exited zero"

test_generic_list: test_generic_list.cpp generic_list_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_generic_list
	./test_generic_list | grep -q 'failed' || echo "Pass: Generic program exited zero"

clean:
	rm -f test_list test_stack test_generic_list
