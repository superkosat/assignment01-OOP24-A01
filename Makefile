CXX = g++
CXXFLAGS = -std=c++11

test_list: test_list.cpp list_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_list
	./test_list; \
	if [ $$? -eq 0 ]; then \
		echo "✅ Testing Linked List Passed"; \
	else \
		echo "❌ Testing Linked List Failed"; \
	fi

test_stack: test_stack.cpp stack_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_stack
	./test_stack; \
	if [ $$? -eq 0 ]; then \
		echo "✅ Testing Stack Passed"; \
	else \
		echo "❌ Testing Stack Failed"; \
	fi

test_generic_list: test_generic_list.cpp generic_list_todo.h
	$(CXX) $(CXXFLAGS) $< -o test_generic_list
	./test_generic_list; \
	if [ $$? -eq 0 ]; then \
		echo "✅ Testing Generic List Passed"; \
	else \
		echo "❌ Testing Generic List Failed"; \
	fi

clean:
	rm -f test_list test_stack test_generic_list
