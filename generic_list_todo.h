#include <iostream>
using namespace std;
template <typename E> 
class Node{
  public:
    E value;
    Node* next;
    Node(E v){
      value=v;
      next=NULL;
    }
};
template <class T> 
class ArrayList{
  public:
    Node<T>* head;
    int size;
    ArrayList(){
        head=NULL;
        size=0;
    }
    ArrayList(ArrayList<T>& l){
        // your code here
    }
    ~ArrayList(){
        // your code here
    }
    void add(T v){
        // your code here
    }
    T pop(){
      // your code here
      T v;
      return v;
    }

    bool operator==(const ArrayList<T>& rhs){
      // your code here
      return 0;
    }

    bool operator!=(const ArrayList<T>& rhs){
      // your code here
      return 0;
    }
    template <class E> 
    friend ostream& operator<<(ostream& os, ArrayList<E>& l);
};
template <class E> 
ostream& operator<<(ostream& os, ArrayList<E>& l){
    // your code here
    return os;
}