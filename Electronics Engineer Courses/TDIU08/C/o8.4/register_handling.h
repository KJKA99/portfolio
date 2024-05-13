#ifndef REGISTER_HANDLING_H
#define REGISTER_HANDLING_H

#include "hero_handling.h"
#include <string>
#include <sstream>
#include <fstream>
#include <vector>

using Register_Type = std::vector<Hero_Type>;

Register_Type load_register(std::string const &file_name);

// Hämta register från fil
bool add_hero(Hero_Type     const &hero,
              Register_Type       &reg);

// Hitta hjältar i registerfilen baserat på intressen
bool find_matches(std::vector<int> const &interests,
                  Register_Type    const &reg,
                  Register_Type          &matches);

// Jämför hjältar för sortering 
bool comp_heroes(Hero_Type const &h1, Hero_Type const &h2);

// Spara register i fil
void save_register(std::string   const &file_name,
              Register_Type const & reg);

// Sortera register
void sort_register(Register_Type & reg);

// Skriv ut register till output stream
void output_register(Register_Type const &reg, std::ostream &output);

// Skriv ut registerheader
void output_header(std::ostream &output);

#endif