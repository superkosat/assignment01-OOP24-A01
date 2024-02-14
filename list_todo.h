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
      head = new Node(v);
      size = 1;
    }
    List(const List& l) {
      head = NULL;
      size = 0;
      Node* temp = l.head;
      while (temp != NULL) {
        this->add(temp->value);
        temp = temp->next;
      }
    }
    ~List(){
      Node* temp = head;
      while (temp != NULL) {
        Node* nextNode = temp->next;
        delete temp;
        temp = nextNode;
      }
      head = NULL;
      size = 0;
    }
    void add(int v){
      if(head == NULL){
        head = new Node(v);
        size = 1;
      }else{
        Node* temp = head;
        while(temp->next != NULL){
          temp = temp->next;
        }
        temp->next = new Node(v);
        size++;
      }
    }
    int pop(){
      int v;
      if (head == NULL) {
        return 0;
      } else if (head->next == NULL) {
        v = head->value;
        delete head;
        head = NULL;
        size = 0;
      } else {
        Node* temp = head;
        while(temp->next->next != NULL){
          temp = temp->next;
        }
        v = temp->next->value;
        delete temp->next;
        temp->next = NULL;
      }
      return v;
    }
    bool operator==(const List& rhs){
      Node* trace1 = this->head;
      Node* trace2 = rhs.head;
      while (trace1 != NULL && trace2 != NULL) {
        if (trace1->value != trace2->value) {
          return false;
        }
        trace1 = trace1->next;
        trace2 = trace2->next;
      }
      if (trace1 != NULL || trace2 != NULL) {
        return false;
      }
      return true;
    }
    bool operator!=(const List& rhs){
      Node* trace1 = this->head;
      Node* trace2 = rhs.head;
      while (trace1 != NULL && trace2 != NULL) {
        if (trace1->value != trace2->value) {
          return true;
        }
        trace1 = trace1->next;
        trace2 = trace2->next;
      }
      if (trace1 == NULL && trace2 == NULL) {
        return false;
      }
      return true;
    }
    friend ostream& operator<<(ostream& os, List& l);
};
ostream& operator<<(ostream& os, List& l){
    Node* temp = l.head;
    while(temp != NULL) {
      os << temp->value << ", ";
      temp = temp->next;
    }
    return os;
}
