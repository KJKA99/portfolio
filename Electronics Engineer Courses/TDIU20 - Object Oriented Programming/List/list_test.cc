#include "catch.hpp"
#include "list.h"
using namespace std;


TEST_CASE ("Constructors and main functions")
{
  List A{9,8,7,6,5,4,3,2,1};
  List B{1,2,3,5,4};
  List C{6,5,4};
  List D{9,6,1};
  List E{};
  
  
  
  SECTION("print")
    {
      CHECK( A.print() == "1,2,3,4,5,6,7,8,9");
      CHECK( B.print() == "1,2,3,4,5");
      CHECK( C.print() == "4,5,6");
      CHECK( D.print() == "1,6,9");
      CHECK( E.print() == "");
      
      
    }

   SECTION("insert and at")
    {
      A.insert(10);
      CHECK( A.print() == "1,2,3,4,5,6,7,8,9,10");
      B.insert(A.at(6));
      CHECK( B.print() == "1,2,3,4,5,6");
      C.insert(A.at(1));
      C.insert(A.at(9));
      CHECK( C.print() == "1,4,5,6,9");
      D.insert(A.at(2));
      D.insert(A.at(3));
      D.insert(A.at(7));
      D.insert(A.at(8));
      CHECK( D.print() == "1,2,3,6,7,8,9");
    }

  SECTION("size")
    {
      CHECK( A.size() == 9);
      CHECK( B.size() == 5);
      CHECK( C.size() == 3);
      CHECK( D.size() == 3);
    }
   
  SECTION("delete")
    {
      A.remove(1);
      A.remove(1);
      B.remove(1);
      C.remove(4);
      D.remove(1);
      CHECK( A.print() == "2,3,4,5,6,7,8,9");
      CHECK( B.print() == "2,3,4,5");
      CHECK( C.print() == "5,6");
      CHECK( D.print() == "6,9");
    }
}

TEST_CASE ("Copy/Move constructors and functions")
{
  List A{1,2,3,5,4};
  List B{6,5,4};
  List C{9,6,1};
  List D{1,2,3};
  
  List E{A};
  List F{move(B)};
  List G{};
  List H{};
  
  G = C;
  H = move(D);


  SECTION("Copy/Move")
    {
      CHECK( A.print() == "1,2,3,4,5");
      CHECK( E.print() == "1,2,3,4,5");
      
      CHECK( B.print() == "");
      CHECK( F.print() == "4,5,6");
      
      CHECK( C.print() == "1,6,9");
      CHECK( G.print() == "1,6,9");
      
      CHECK( D.print() == "");
      CHECK( H.print() == "1,2,3");
  
    
      
    }
      
      

  
}
