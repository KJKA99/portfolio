#include "time.h"




Time::Time(int const& h, int const& m, int const& s)
  :hour{h}, minute{m}, second{s}
{
  
 
  if(hour < 0 or hour > 23)
    throw std::logic_error("incorrect hour");
  if(minute < 0 or minute > 59)
    throw std::logic_error("incorrect minute");
  if(second < 0 or second > 59)
  throw std::logic_error("incorrect second");
    
}

Time::Time()
  :hour{}, minute{}, second{}
{
}


Time::Time(std::string const& str)
  : hour{0}, minute{0}, second{0}
{
  std::string col_1;
  std::string col_2;
  
  col_1 = str.substr(2,1);
  col_2 = str.substr(5,1);
  hour = std::stoi(str.substr(0,2));
  minute = std::stoi(str.substr(3,2));
  second = std::stoi(str.substr(6,2));
  
  if(col_1 != ":" or col_2 != ":")
    throw std::logic_error("incorrect format");
  
  Time T{hour,minute,second};
  
}




int Time::get_hour()const
{
  return hour;
}
int Time::get_minute()const
{
  return minute;
}
int Time::get_second()const
{
  return second;
}

bool Time::is_am()const
{
  int Time{hour};
  if(Time >= 12)
    {
      return false;
    }
  else
    {
      return true;
    }
}




std::string Time::to_string(int i)const
  {
   std::stringstream ss;


   int H = hour;

   if(i == 12)
     {
       if(hour > 12)
	 {
	   H = hour - 12;
	   
	 }
       else if(hour == 0)
	 {
	   H = hour + 12;
	 }
     }

   
   if(H < 10)
     {
       ss << "0" << H;
     }
   else
     {
       ss << H;
     }

   

   if(minute < 10)
     {
       ss << ":0" << minute;
     }
   else
     {
       ss << ":" << minute;
     }

   

   if(second < 10)
     {
       ss << ":0" << second;
     }
   else
     {
       ss << ":" << second;
     }

   if(i == 24 or i == 12)
     {
       if(hour >= 12)
	 {
	   ss << " pm";
	 }
       else
	 {
	   ss << " am";
	 }
     }
   
   return ss.str();
  }


Time operator+(int I,Time T)
{
  T = T + I;
  return T;
}
Time Time::operator+(int const N)const
{


  int H = hour;
  int M = minute;
  int S = second;

  if(N >= 0)
    {
      for (int i = 0; i < N; i++)
	{
	  S++;
	  
	  if(S > 59)
	    {
	      M++;
	      S = 0;
	    }
	  
	  if(M > 59)
	    {
	      H++;
	      M = 0;
	    }
	  
	  
	  if(H > 23)
	    {
	      H = 0;
	      
	    }
	}
    }
  else if(N < 0)
    {
      for (int i = 0; i > N; i--)
	{
	  S--;
	  
	  if(S < 0)
	    {
	      M--;
	      S = 59;
	    }
	  
	  if(M < 0)
	    {
	     H--;
	      M = 59;
	    }
	  
	  
	  if(H < 0)
	    {
	      H = 23;
	      
	    }
	}
    }

  
  Time t0{H,M,S};

  

  return t0;
  
}

Time Time::operator-(int N)const
{
  N *= -1;
  return (*this + N);
}

Time Time::operator--(int)
{
  
  Time T = *this;
  

  --second;
	  
  if(second < 0)
    {
      --minute;
      second = 59;
    }
  
  if(minute < 0)
    {
      --hour;
      minute = 59;
    }
	  
	  
  if(hour < 0)
    {
      hour = 23;
	      
    }
  
  return T;
  
}

Time& Time::operator--()
{

  --second;
	  
  if(second < 0)
    {
      --minute;
      second = 59;
    }
  
  if(minute < 0)
    {
      --hour;
      minute = 59;
    }
	  
	  
  if(hour < 0)
    {
      hour = 23;
	      
    }
 
  
  return *this;
  
}

Time Time::operator++(int)
{

  Time T = *this;
  

    ++second;
	  
  if(second > 59)
    {
      ++minute;
      second = 0;
    }
  
  if(minute > 59)
    {
      ++hour;
      minute = 0;
    }
	  
	  
  if(hour > 23)
    {
      hour = 0;
	      
    }
    
  return T;
  
}

Time& Time::operator++()
{
 

  ++second;
	  
  if(second > 59)
    {
     ++minute;
      second = 0;
    }
  
  if(minute > 59)
    {
      ++hour;
      minute = 0;
    }
	  
	  
  if(hour > 23)
    {
      hour = 0;
	      
    }
  
  return *this;
  
  }

bool Time::operator<(Time const& N)const
{
  int H = hour;
  int M = minute;
  int S = second;

  if(H > N.hour)
    {
      return false;
    }
  else if(M > N.minute)
    {
      return false;
    }
  else if(S > N.second)
    {
      return false;
    }
  else if( H == N.hour and M == N.minute and S == N.second)
    {
      return false;
    }
  else
    {
      return true;
    }
  
}


bool Time::operator>(Time const& N)const
{
  
  
  if(N < *this)
    {
      return true;
    }
  else
    {
      return false;
    }
}

bool Time::operator==(Time const& N)const
{
  

  
  if( *this < N or N < *this)
    {
      return false;
    }
  else
    {
      return true;
    }
}



bool Time::operator>=(Time const& N)const
{
  
  
  if(*this > N or *this == N)
    {
      return true;
    }
  else
    {
      return false;
    }

}


bool Time::operator!=(Time const& N)const
{
 

  if(*this == N)
    {
      return false;
    }
  else
    {
      return true;
    }
}

bool Time::operator<=(Time const& N)const
{
 
  
  if(*this > N)
    {
      return false;
    }
  else
    {
      return true;
    }
}

std::ostream& operator<<(std::ostream & o,Time const& N)
{
  o << N.to_string();
  
  return o;
}

std::istream& operator>>(std::istream & o, Time & N)
{
  std::string T{}; 
  o >> T;
  N = Time{T};
  
  
  return o;
  

}
