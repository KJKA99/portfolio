// -- kebje541: Samarbetat med jambe108, James Beise, samma program

#include <iostream>
#include <iomanip>
#include <string>
#include <cctype>
#include <cmath>
#include <ctype.h>

using namespace std;

int menu_selection()                    
{
  int selection{};
  cout << "1. Beräkna N-fakultet." << endl;
  cout << "2. Multiplicera en sträng." << endl;
  cout << "3. Byta värden på ett heltal och ett flyttal." << endl;
  cout << "4. Beräkna totala längden samt medellängden på två strängar." << endl;
  cout << "5. Avsluta programmet." << endl;
  cout << "Val: ";
  cin >> selection;

  if (selection < 1 || selection > 5)
    {
      cout << "Fel val!" << endl;
    }
  
  return selection;
}

//////////////// Program 1: Factorial /////////////////

int n_factorial(int const n)                      
{
  if (n == 1)
    {
      return n;
    }
  if (n == 0)
    {
      return 1;
    }
  else
    {
      return (n * n_factorial(n - 1));
    }
}

void return_n_factorial()                
{
  int sum{}, whole_number{};
  
  cout << "Mata in ett heltal: ";
  cin >> whole_number;
  sum = n_factorial(whole_number);
  cout << "Fakulteten av " << whole_number << " är " << sum << endl;
}

string mult_text(string const &text,
		 int    const &multiplier)
{
  string temp{};
  
  for (int i{0}; i < multiplier; i++)
    {
      temp += text;
    }
  
  return temp;
}

//////////////// Program 2: Multiply string  /////////////////

void mult_textinput()
{
  string text{};
  int multiplier{};
  
  cout << "Mata in en text och ett heltal: ";
  cin >> text >> multiplier;
  cout << "Den multiplicerade texten är ";
  cout << mult_text(text, multiplier);
  cout << endl;
}

//////////////// Program 3: Swap values /////////////////

void swap(double &dbl,
	 int     &whole_number)
{
  double temp{};
  
  temp = ceil(dbl);
  dbl = static_cast<double>(whole_number);
  whole_number = static_cast<int>(temp);

}

void swap_var()
{

  double dbl{};
  int whole_number{};
  
  cout << "Mata in ett heltal och ett flyttal: ";
  cin >> whole_number >> dbl;
  swap(dbl,whole_number);
  cout << "Heltalets värde är nu " << whole_number << endl;
  cout << fixed << setprecision(1) << "Flyttalets värde är nu " << dbl << endl;
  swap(dbl, whole_number);

}

//////////////// Program 4: string length  /////////////////


void str_length(int         &total_length,
	       double       &mean_length,
	       string const &text_1,
	       string const &text_2)
{
  total_length = text_1.size() + text_2.size();
  mean_length = static_cast<double>((text_1.size() + text_2.size()))/2.0;
}

void str_lengthinput()
{
  int    total_length{};
  double mean_length{};
  string text_1{}, text_2{};
  
  cout << "Mata in två ord: ";
  cin >> text_1 >> text_2;
  str_length(total_length, mean_length, text_1, text_2);
  cout << "Totallängd: " << total_length << endl;
  cout << fixed << setprecision(1) << "Medellängd: " << mean_length << endl;
}

//////////////// Program 5: Terminate program /////////////////

void exit_input(bool &run)
{
  run = false;
  cout << "Ha en bra dag!" << endl;

}

/////////////////////////////////////////////

void main_menu(bool &run)
{
    int selection{};
  
    selection = menu_selection();
      switch (selection)
	{
	case 1:
	  return_n_factorial();
	  break;

	case 2:
	  mult_textinput();
	  break;

	case 3:
	  swap_var();
	  break;

	case 4:
	  str_lengthinput();
	  break;

	case 5:
	  exit_input(run);
	  break;
	}
}

int main()
  
{
  bool run{true};

  cout << "Välkommen till huvudmenyn!" << endl;
  while (run)
    {
      main_menu(run);
    }
  return 0;
}
