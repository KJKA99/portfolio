#ifndef TIME_H
#define TIME_H
#include <iostream>
#include <sstream>

class Time
{
 public:

  Time(int const& h, int const& m, int const& s);
  Time();
  Time(std::string const& str);
  
  
  bool operator<=(Time const& N)const;
  bool operator>=(Time const& N)const;
  bool operator!=(Time const& N)const;
  bool operator==(Time const& N)const;
  bool operator>(Time const& N)const;
  bool operator<(Time const& N)const;
  Time operator--(int);
  Time& operator--();
  Time operator-(int N)const;
  Time& operator++();
  Time operator++(int);
  Time operator+(int const N)const;

  std::string to_string(int i = 1)const;
  bool is_am()const;
  int get_hour()const;
  int get_minute()const;
  int get_second()const;

 private:

  int hour;
  int minute;
  int second;
  
};

std::ostream& operator<<(std::ostream & o, Time const& N);
std::istream& operator>>(std::istream & o, Time & N);
Time operator+(int I,Time T);
		
#endif
