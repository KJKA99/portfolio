#include "list.h"


using namespace std;

List::Node::Node()
  : value{0}, next{nullptr}, prev{nullptr}
{
  
}
List::List()
  : head{nullptr}, tail{nullptr}
{
  
}
List::List(std::initializer_list<int> const& l)
  : head{nullptr}, tail{nullptr}
{
  for (int i : l)
    {
      insert( i );
    }
}



List::List(List && l)
  : head{nullptr}, tail{nullptr}
{
  head = l.head;
  tail = l.tail;
  l.head = nullptr;
  l.tail = nullptr;
}





List::List(List const& l)
 : head{nullptr}, tail{nullptr}
{
   Node *conducter = l.head;
  
   if(conducter != nullptr)
     {
   while(conducter->next != nullptr)
     {
       insert(conducter->value);
       conducter = conducter->next;
     }
   insert(conducter->value);
   }
}




List& List::operator=(List && l)
{
  Node *conducter = head;



  head = l.head;
  l.head = conducter;

  conducter = tail;

  tail = l.tail;
  l.tail = conducter;


  return *this;
}





List& List::operator=(List const& l)
{
  Node *conducter = head;

  while(conducter != nullptr)
    {
      remove(conducter->value);
      conducter = head;
    }
  
  conducter = l.head;
  
  if(conducter != nullptr)
    {
      while(conducter->next != nullptr)
	{
	  insert(conducter->value);
	  conducter = conducter->next;
	}
      insert(conducter->value);
    }
  return *this;
}







int List::at(int const& i)
{
  Node *conducter = head;
  

  for(int T = 1; T < i; T++)
    {
      conducter = conducter->next;
    }
  return conducter->value;
}



void List::insert(int i)
{
  
  Node *root = new Node;
  Node *conducter = head;
  
  root->value = i;
  
  if(conducter == nullptr)
    {
      root->next = nullptr;
      root->prev = nullptr;
      head = root;
    }
  else if(i > conducter->value)
    {
      while(i > conducter->value and conducter->next != nullptr)
	{
	  conducter = conducter->next;
	  
	}
      if(i < conducter->value)
	{
	  conducter = conducter->prev;
	  conducter->next->prev = root;
	}
      root->next = conducter->next;
      root->prev = conducter;
      conducter->next = root;

    }

  
  else if (i < conducter->value)
    {
      root->next = conducter;
      root->prev = conducter->prev;
      conducter->prev = root;
      if(root->prev == nullptr)
	{
	  head = root;
	}
      
    }
  conducter = head;
  if(conducter->next != nullptr)
    {
  while(conducter->next != nullptr)
    {
      conducter = conducter->next;
    }
    }
  tail = conducter;
  delete root;
}


std::string List::print()
{
  std::stringstream ss;
  Node *conducter = head;

  if(conducter != nullptr)
    {
      while(conducter->next != nullptr)
	{
	  ss << conducter->value << ",";
	  conducter = conducter->next;
	}
      ss << conducter->value;
    }
  return ss.str();
}


int List::size()
{
  int i{0};
  Node *conducter = head;

  while(conducter != nullptr)
    {
      i++;
      conducter = conducter->next;
    }
  return i;
}


void List::remove(int i)
{
  Node *conducter = head;

  while(conducter->value != i and conducter->next != nullptr)
    {
      conducter = conducter->next;
    }
  if(conducter->value == i)
    {
      if(conducter->next == nullptr)
	{
	  Node *root1 = conducter->prev;
	  root1->next = nullptr;
	  tail = root1;
	  conducter->prev = nullptr;

	}
      else if(conducter->prev == nullptr)
	{
	  Node *root1 = conducter->next;
	  root1->prev = nullptr;
	  head = root1;
	  conducter->next = nullptr;

	}
      else if(conducter->next != nullptr and conducter->prev != nullptr)
	{

	  Node *root1 = conducter->prev;
	  Node *root2 = conducter->next;
	  root1->next = root2;
	  root2->prev = root1;
	  conducter->prev = nullptr;
	  conducter->next = nullptr;
	}
      delete conducter;
      
    }
	  
	  
}

