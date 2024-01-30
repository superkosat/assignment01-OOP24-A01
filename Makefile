CXX = g++
CXXFLAGS = -std=c++11

test_ll: list_tests.h list_todo.h
	$(CXX) $(CXXFLAGS) $^ -o list_test_run
	chmod +x list_test_run
	./list_test_run
	rm list_test_run

test_gll: generic_list_tests.h generic_list_todo.h
	$(CXX) $(CXXFLAGS) $^ -o gll_test_run
	chmod +x gll_test_run
	./gll_test_run
	rm gll_test_run

test_stack: stack_tests.h stack_todo.h
	$(CXX) $(CXXFLAGS) $^ -o stack_test_run
	chmod +x stack_test_run
	./stack_test_run
	rm stack_test_run

test: test_ll test_gll test_stack
