#include "container.h"
class List: public Container{
  public:
    Node* head;
    int size;
    List(){
      head=NULL;
      size=0;
    }
    List(int v){
      // Your code here
    }
    List(List& l){
      // Your code here
    }
    ~List(){
      // Your code here
    }
    void add(int v){
      // Your code here
    }
    int pop(){
      // Your code here
      return 0;
    }
    bool operator==(const List& rhs){
      // Your code here
      return false;
    }
    bool operator!=(const List& rhs){
      // Your code here
      return false;
    }
    friend ostream& operator<<(ostream& os, List& l);
};
ostream& operator<<(ostream& os, List& l){
    // Your code here
    return os;
}
