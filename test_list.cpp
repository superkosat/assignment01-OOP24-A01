#include "list_tests.h"
#include <cstdlib>  
#include <exception>  

using namespace tests;

int main() {
  // List Test Cases
  try {
    run_list_test_case_1();
    run_list_test_case_2();
    run_list_test_case_3();
    run_list_test_case_4();
    run_list_test_case_5();
    run_list_test_case_6();
    run_list_test_case_7();
    run_list_test_case_8();
  } catch (const std::exception& e) {
    // If any test case fails, print an error message
    std::cerr << "Test case failed: " << e.what() << std::endl;
    exit(1);
  }

  return 0;
}