#ifndef HERO_HANDLING_H
#define HERO_HANDLING_H

#include <iostream>
#include <iomanip>
#include <string>
#include <vector>
#include <algorithm>

struct Hero_Type 
{
    std::string name;
    int         birth_year;
    float       weight;
    std::string hair_color;
    std::vector<int> interests;
};

void output_hero(std::ostream &output, Hero_Type const &hero);
void get_hero(std::istream &input, Hero_Type &hero);

#endif