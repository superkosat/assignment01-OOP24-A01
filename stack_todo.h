#include "container.h"
class Stack: public Container{
  public:
    Node* head;
    int size;
    Stack(){
      head=NULL;
      size=0;
    }
    Stack(int v){
      // Your code here
    }
    Stack(Stack& l){
      // Your code here
    }
    ~Stack(){
      // Your code here
    }
    void push(int v){
      // Your code here
    }
    int pop(){
      // Your code here
      return 0;
    }
    bool operator==(const Stack& rhs){
      // Your code here
      return false;
    }
    bool operator!=(const Stack& rhs){
      // Your code here
      return false;
    }
    friend ostream& operator<<(ostream& os, Stack& l);
};
ostream& operator<<(ostream& os, Stack& l){
    // Your code here
    return os;
}
