#include "component.h"
#include <string>
#include <cmath>

using namespace std;



// Potential change distributer----------------------------------------------------------------
void distribute_potential_change(double const potential_change, Connection & con_a,
				                               Connection & con_b )
{
  if(con_a.potential - con_b.potential < 0)
    {
      con_b.potential = con_b.potential - potential_change;
      con_a.potential = con_a.potential + potential_change;
    }
  else
    {
      con_b.potential = con_b.potential + potential_change;
      con_a.potential = con_a.potential - potential_change;
    }
}



// Component class implementations-------------------------------------------------------------
Connection::Connection()
  :potential{}
{}

Component::Component(std::string const& n, double const v,
		           Connection & a, Connection & b)
  :name{n}, value{v}, con_a{a}, con_b{b}
{}

double Component::get_voltage() const
{
  return abs(con_a.potential - con_b.potential);
}

std::string Component::get_component_name() const
{
  return name;
}



// Battery class implementations---------------------------------------------------------------
Battery::Battery(std::string const& n, double const v,
		       Connection & a, Connection & b)
  :Component{n, v, a, b}
{}

double Battery::get_current() const
{
  return 0;
}

void Battery::simulate(double const time_step)
{
  con_a.potential = value;
  con_b.potential = 0 * time_step;
}



// Resistor class implementations--------------------------------------------------------------
Resistor::Resistor(std::string const& n, double const v,
		         Connection & a, Connection & b)
  :Component{n, v, a, b}
{}

double Resistor::get_current() const
  {
    return get_voltage()/value;
  }

void Resistor::simulate(double const time_step)
  {
    double potential_change {get_voltage()/value*time_step};
    distribute_potential_change(potential_change, con_a, con_b);
  }



// Capacitor class implementations-------------------------------------------------------------
Capacitor::Capacitor(std::string const& n, double const v,
		           Connection & a, Connection & b)
  :Component{n, v, a, b}, charge{}
{}

double Capacitor::get_current() const
  {
    return (get_voltage()-charge)*value;
  }

void Capacitor::simulate(double const time_step)
  {
    double potential_change {value * (get_voltage() - charge) * time_step};
    charge = charge + potential_change;
    distribute_potential_change(potential_change, con_a, con_b);
  }
