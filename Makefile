CXX = g++
CXXFLAGS = -std=c++11

test_main: main.cpp
	$(CXX) $(CXXFLAGS) $^ -o test_main

test: test_main
	./test_main
	rm test_main
