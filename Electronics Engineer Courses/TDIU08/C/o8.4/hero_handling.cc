#include "hero_handling.h"
#include <sstream>

using namespace std;
// -------------------------------------------------------------------
// Läser hjältenfo från input stream and populerar Hero_Type objeket
void get_hero(istream   &input, // Hero info läses
              Hero_Type &hero) // Referens till Hero_Type objektet, populeras med read-info
{
    int interest;
    bool hero_exists;
    string str;

    input >> hero.name >> hero.birth_year >> hero.weight >> hero.hair_color;

    getline(input, str);
    istringstream linestream(str);

    while (linestream >> interest) 
    {
        hero_exists = false;

        for (size_t i {0}; i < hero.interests.size(); ++i) {
            if (interest == hero.interests.at(i)) 
            {
                hero_exists = true;
            };
        };

        if (not hero_exists) {
            hero.interests.push_back(interest);
        };
    };

    sort(hero.interests.begin(), hero.interests.end());
}
// -------------------------------------------------------------------
// Skriver hjälteinfo till output stream
// 
void output_hero(ostream         &output, // Output stream där hero info skrivs
                 Hero_Type const &hero)  // konstant referens till Hero_Type object innehåller info som ska skrivas
{
    output << fixed << left << setprecision(2) << setw(11) << hero.name
           << setw(12) << hero.birth_year
           << setw(8)  << hero.weight
           << setw(12) << hero.hair_color;

    for (size_t i {0}; i < hero.interests.size(); ++i) {
        output << setw(3) << right << hero.interests.at(i);
    };
}
// -------------------------------------------------------------------