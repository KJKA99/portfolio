#include "catch.hpp"
#include "time.h"
using namespace std;



TEST_CASE ("Constructors and getters")
{
   SECTION("Default")
   {
      Time empty{};
      CHECK( empty.get_hour()   == 0 );
      CHECK( empty.get_minute() == 0 );
      CHECK( empty.get_second() == 0 );
   }



   SECTION("Integer")
   {
      Time t0{0,0,0};
      Time t1{12,30,30};
      Time t2{23,59,59};

      CHECK_THROWS( Time{13,35,60} );
      CHECK_THROWS( Time{13,60,35} );
      CHECK_THROWS( Time{24,35,35} );
             
      CHECK( t0.get_hour()   == 0 );
      CHECK( t0.get_minute() == 0 );
      CHECK( t0.get_second() == 0 );
      CHECK( t1.get_hour()   == 12 );
      CHECK( t1.get_minute() == 30 );
      CHECK( t1.get_second() == 30 );
      CHECK( t2.get_hour()   == 23 );
      CHECK( t2.get_minute() == 59 );
      CHECK( t2.get_second() == 59 );
   }

 

   SECTION("String")
   {
      Time t0{"00:00:00"};
      Time t1{"12:30:30"};
      Time t2{"23:59:59"};

      CHECK_THROWS( Time{"13:35:60"} );
      CHECK_THROWS( Time{"13:60:35"} );
      CHECK_THROWS( Time{"24:35:35"} );

      CHECK( t0.get_hour()   == 0 );
      CHECK( t0.get_minute() == 0 );
      CHECK( t0.get_second() == 0 );
      CHECK( t1.get_hour()   == 12 );
      CHECK( t1.get_minute() == 30 );
      CHECK( t1.get_second() == 30 );
      CHECK( t2.get_hour()   == 23 );
      CHECK( t2.get_minute() == 59 );
      CHECK( t2.get_second() == 59 );  
   }

}

TEST_CASE ("is_am") 
{
   Time t0{"05:00:00"};
   Time t1{"14:00:00"};
   CHECK       ( t0.is_am() );
   CHECK_FALSE ( t1.is_am() );
   
}


TEST_CASE ("to_string")
{
  // istringstream iss{"05:90:40"};
  ostringstream T1{};
  ostringstream T2{};
  ostringstream T3{};
  Time t0{01, 59, 58};
  Time t1{01, 59, 59};
  Time t2{12, 0, 0};
  Time t3{12, 1, 0};
  Time t4{23, 59, 59};
  Time t5{15, 59, 59};
  Time T6{};
  Time T7{};
  Time T8{};
  istringstream t6{"11:00:00"};
  istringstream t7{"12:00:00"};
  istringstream t8{"13:00:00"};
  
   SECTION("24 hour format no argument")
    {
      CHECK( t0.to_string() == "01:59:58" );
      CHECK( t1.to_string() == "01:59:59" );
      CHECK( t2.to_string() == "12:00:00" );
      CHECK( t3.to_string() == "12:01:00" );
      CHECK( t4.to_string() == "23:59:59" );
      
    }
  
  SECTION("24 hour format with argument")
    {
      CHECK(t1.to_string(24) == "01:59:59 am");
      CHECK(t2.to_string(24) == "12:00:00 pm");
      
    } 
  
  SECTION("12 hour format")
    {
      CHECK( t0.to_string(12) == "01:59:58 am" );
      CHECK( t1.to_string(12) == "01:59:59 am" );
      CHECK( t2.to_string(12) == "12:00:00 pm" );
      CHECK( t3.to_string(12) == "12:01:00 pm" );
      CHECK( t4.to_string(12) == "11:59:59 pm" );
    }


   SECTION("Add")
    {
      CHECK( (t0 + 3600).to_string(24) == "02:59:58 am" );
      CHECK( (t1 + 60).to_string(24) == "02:00:59 am" );
      CHECK( (t2 + 30).to_string(24) == "12:00:30 pm" );
      CHECK( (t3 + -30).to_string(24) == "12:00:30 pm" );
      CHECK( (t4 + -60).to_string(24) == "23:58:59 pm" );
      CHECK( (t5 + -3600).to_string(24) == "14:59:59 pm" );
      
    }

   SECTION("Sub")
    {
      CHECK( (t0 - 3600).to_string(24) == "00:59:58 am" );
      CHECK( (t1 - 60).to_string(24) == "01:58:59 am" );
      CHECK( (t2 - 30).to_string(24) == "11:59:30 am" );
      CHECK( (t3 - -30).to_string(24) == "12:01:30 pm" );
      CHECK( (t4 - -60).to_string(24) == "00:00:59 am" );
      CHECK( (t5 - -3600).to_string(24) == "16:59:59 pm" );
      
    }
  
   SECTION("Add/Sub 1")
    {
      CHECK( (t0++).to_string(24) == "01:59:58 am" );
      CHECK( t0.to_string(24) == "01:59:59 am" );
      
      CHECK( (t1++).to_string(24) == "01:59:59 am" );
      CHECK( t1.to_string(24) == "02:00:00 am" );
      
      CHECK( (t2++).to_string(24) == "12:00:00 pm" );
       CHECK( t2.to_string(24) == "12:00:01 pm" );
       
      CHECK( (t3--).to_string(24) == "12:01:00 pm" );
      CHECK( t3.to_string(24) == "12:00:59 pm" );
      
      CHECK( (t4--).to_string(24) == "23:59:59 pm" );
      CHECK( t4.to_string(24) == "23:59:58 pm" );
      
      CHECK( (t5--).to_string(24) == "15:59:59 pm" );
      CHECK( t5.to_string(24) == "15:59:58 pm" );
      
    }

     SECTION("Add/Sub 1")
    {
      CHECK(t0 < t1);
      CHECK(t2 < t3);
      CHECK(t5 < t4);
      CHECK_FALSE(t1 < t0);
      CHECK_FALSE(t3 < t2);
      CHECK_FALSE(t4 < t5);
      CHECK_FALSE(t0 == t1);
      CHECK_FALSE(t2 == t3);
      CHECK_FALSE(t4 == t5);
      CHECK(t0 == t0);
      CHECK(t2 == t2);
      CHECK(t4 == t4);

      CHECK_FALSE(t0 > t1);
      CHECK_FALSE(t2 > t3);
      CHECK(t4 > t5);
      CHECK(t1 > t0);

      CHECK_FALSE(t0 >= t1);
      CHECK_FALSE(t2 >= t3);
      CHECK(t4 != t5);
      CHECK(t1 != t0);
      CHECK(t0 >= t0);
      CHECK(t2 >= t2);

      CHECK_FALSE(t4 <= t5);
      CHECK_FALSE(t1 <= t0);
      CHECK(t5 <= t4);
      CHECK(t0 <= t1);
      CHECK(t0 <= t0);
     CHECK(t2 <= t2);
   
      
      T1 << t0;
      T2 << t2;
      T3 << t1;
      

      CHECK(T1.str() == "01:59:58");
      CHECK(T2.str() == "12:00:00");
      CHECK(T3.str() == "01:59:59");

      t6 >> T6;
      t7 >> T7;
      t8 >> T8;

      CHECK(T6.to_string() == "11:00:00");
      CHECK(T7.to_string() == "12:00:00");
      CHECK(T8.to_string() == "13:00:00");
      
    }


     SECTION("TEST IF FAILBIT WORKS")
       {
	 //ss << "05:50:aa";
	 //iss >> T6;
	 //CHECK( iss.fail() );
	 //CHECK(T6.to_string() == "11:00:00");
	 /* ss.clear();
	 ss << "99:99:99";
	 //ss >> T7;
	 CHECK_FALSE(ss.fail());*/
       }

     
}



   




