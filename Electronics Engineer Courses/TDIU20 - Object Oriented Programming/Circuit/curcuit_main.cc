#include "component.h"
#include <vector>
#include <iostream>
#include <iomanip>
#include <stdexcept>

using namespace std;

void print_output(vector<Component*> const& net)
{
  
  for(Component* C: net)
    {
      cout << setprecision(2) << fixed << setw(5) << C->get_voltage()
	   << setw(6) << C->get_current() << " ";
    }
  
  cout << endl;
  
}

void simulate(vector<Component*> const& net, int const iterations,
	                int const outputs, double const time_step)
{
  
  int iterations_per_output{iterations/outputs};
  
  for(Component* C: net)
    {
      cout << setw(11) << C->get_component_name() << ' ';
    }
  
  cout << endl;
  
  for(int i{}; i < static_cast<int>(net.size()); i++)
    {
      cout << " Volt  Curr ";
    }
  
  cout << endl;
  
  for(int p{}; p < outputs; p++)
    {      
      for(int o{}; o < iterations_per_output; o++)
	{	  
	  for(Component* C : net)
	    {
	      C->simulate(time_step);
	    }	  
	}
      
      print_output(net);
    }
  
}


int main(int argc, char* argv[])
{

  int num_iterations{};
  int num_outputs{};
  double time_step{};
  double battery_voltage{};
  
  try
    {
      if(argc != 5)
	{
	  throw logic_error("Wrong commandline arguments.\nThe commands should be:\n'Number of iterations' 'Number of outputs' 'Time step per iteration' 'The wanted battery voltage'\n");
	}
      
      num_iterations = stoi(argv[1]);
      num_outputs = stoi(argv[2]);
      time_step = stod(argv[3]);
      battery_voltage = stod(argv[4]);
      
      if(num_iterations % num_outputs != 0)
	{
	  throw invalid_argument("The number of iterations must be divisable by the number of outputs.\n");
	} 
    }

  catch (const std::exception& e)
    {
      terminate();
    }

  //KRETS_1
  Connection P, N, Q124, Q23;
  vector<Component*> net;
  net.push_back(new Battery ("Bat", battery_voltage,    P,    N));
  net.push_back(new Resistor( "R1",             6.0,    P, Q124));
  net.push_back(new Resistor( "R2",             4.0, Q124,  Q23));
  net.push_back(new Resistor( "R3",             8.0,  Q23,    N));
  net.push_back(new Resistor( "R4",            12.0, Q124,    N));
  simulate(net, num_iterations, num_outputs, time_step);

  // //KRETS_2
  // Connection P, N, L, R;
  // vector<Component*> net;
  // net.push_back(new Battery ("Bat", battery_voltage, P, N));
  // net.push_back(new Resistor( "R1",           150.0, P, L));
  // net.push_back(new Resistor( "R2",            50.0, P, R));
  // net.push_back(new Resistor( "R3",           100.0, L, R));
  // net.push_back(new Resistor( "R4",           300.0, L, N));
  // net.push_back(new Resistor( "R5",           250.0, R, N));
  // simulate(net, num_iterations, num_outputs, time_step);
  
  // //KRETS_3
  // Connection P, N, L, R;
  // vector<Component*> net;
  // net.push_back(new Battery  ("Bat", battery_voltage, P, N));
  // net.push_back(new Resistor ( "R1",           150.0, P, L));
  // net.push_back(new Resistor ( "R2",            50.0, P, R));
  // net.push_back(new Capacitor( "C3",             1.0, L, R));
  // net.push_back(new Resistor ( "R4",           300.0, L, N));
  // net.push_back(new Capacitor( "C5",            0.75, R, N));
  // simulate(net, num_iterations, num_outputs, time_step);

  return 0;
}
