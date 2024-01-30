g++ -std=c++11 list_tests.h list_todo.h test_linked_list.cpp -o test_linked_list

if [ $? -eq 0 ]; then
  ./test_linked_list
  rm test_linked_list
else
  echo "Compilation error"
fi