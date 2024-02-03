CXX = g++
CXXFLAGS = -std=c++11

test_list: test_list.cpp list_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_list && ./test_list && echo "✅ Testing Linked List Passed" || echo "❌ Testing Linked List Failed"

test_stack: test_stack.cpp stack_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_stack && ./test_stack && echo "✅ Testing Stack Passed" || echo "❌ Testing Stack Failed"

test_generic_list: test_generic_list.cpp generic_list_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_generic_list && ./test_generic_list && echo "✅ Testing Generic List Passed" || echo "❌ Testing Generic List Failed"

clean:
	rm -f test_list test_stack test_generic_list
