#ifndef LIST_H // Headerguard
#define LIST_H // Headerguard
#include <sstream>
#include <iostream>
#include <initializer_list>

class List
{
  
 public:

  List();
  List(std::initializer_list<int> const& l);
  List(List const& l);
  List(List && l);

  List& operator=(List && l);
  List& operator=(List const& l);
  void insert(int i); // Vi vill kunna stoppa in något i vår lista
  void remove(int i); // Vi vill kunna ta bort något från vår lisa
  int size(); // -||- se storlek -||-
  int at(int const& i);
  std::string print(); // -||- se storlek -||-
  
  
 private:
  
  struct Node
  {
    Node();
    int value;
    Node* next;
    Node* prev;
  };

   Node* head;
   Node* tail;
  
  
    

  
  
};

#endif // Headerguard
