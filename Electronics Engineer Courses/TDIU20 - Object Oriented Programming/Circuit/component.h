#ifndef COMPONENT_H
#define COMPONENT_H
#include <string>

class Connection
{
public:
  
  Connection();
  virtual ~Connection() = default;
  double potential{};
};

class Component : public Connection
{
public:

  Component(std::string const& n, double const v,
	         Connection & a, Connection & b);
  virtual ~Component() = default;
  double get_voltage() const;
  std::string get_component_name() const;
  virtual double get_current() const = 0;
  virtual void simulate(double const time_step) = 0;
  
protected:
  std::string name{};
  double value{};
  Connection & con_a;
  Connection & con_b;
};

class Battery : public Component
{
public:
  
  Battery(std::string const& n, double const v,
	       Connection & a, Connection & b);
  double get_current() const override;
  void simulate(double const time_step) override;
};

class Resistor : public Component
{
  public:
  
  Resistor(std::string const& n, double const v,
	        Connection & a, Connection & b);
  double get_current() const override;
  void simulate(double const time_step) override;
};

class Capacitor : public Component
{
public:
  
  Capacitor(std::string const& n, double const v,
	         Connection & a, Connection & b);
  double get_current() const override;
  void simulate(double const time_step) override;
  
private:
  
  double charge{};
};
#endif
