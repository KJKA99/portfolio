#include "register_handling.h"

using namespace std;
// -------------------------------------------------------------------
//Hämtar in register och returnerar
Register_Type load_register(string const &file_name) 
{
    Register_Type reg;
    Hero_Type hero{};
    string line_string;
    ifstream reg_file {file_name};
    stringstream line_stream;

    if (reg_file.is_open()) 
    {

        while (getline(reg_file, line_string)) 
        {
            Hero_Type hero {};
            line_stream << line_string << '\n';
            get_hero(line_stream, hero);
            add_hero(hero, reg);
        };
    };

    reg_file.close();
    return reg;
}
// -------------------------------------------------------------------
// Lägger till hero i registrer om namnet ör unikt
// Returnerar true om match, annars falskt
bool add_hero(Hero_Type     const &hero,
              Register_Type       &reg) 
{
    for (size_t i {0}; i < reg.size(); ++i) 
    {
        if (hero.name == reg.at(i).name) {
            return false;
        };
    };

    reg.push_back(hero);
    sort_register(reg);
    return true;
}
// ---------------------------------------------------------------
// Hittar heroes i registret med matchande intressen (enligt specificerad vektor)
// Returnerar true om match, annars falskt
bool find_matches(std::vector<int> const &interests,
                  Register_Type    const &reg,
                  Register_Type          &matches) 
{
    bool in_range {false};

    for (size_t i {0}; i < interests.size(); ++i) 
    {
        // Kolla så givet intresse är mellan 1 - 15
        if (0 < interests.at(i) and interests.at(i) < 16) 
        {
            in_range = true;

        };
    };

    if (not in_range) 
    {
        return false;
    };

    // Loopar för att jämföra användarens intressen mot registret
    for (size_t i {}; i < interests.size(); ++i) 
    {
        for (size_t j {}; j < reg.size(); ++j) 
        {
            for (size_t k {}; k < reg.at(j).interests.size(); ++k) 
            {
                if (interests.at(i) == reg.at(j).interests.at(k)) 
                {
                    add_hero(reg.at(j), matches);
                    continue;
                };
            };
        };
    };

    return true;
}
// ---------------------------------------------------------------
// Jämför två heroes baserat på namn oavset gemener och versaler
// Returnerar true om  första hjälten kommer före den andra hjälten i alfabetisk ordning, annars falskt
bool comp_heroes(Hero_Type const &h1,
                 Hero_Type const &h2) 
{
    return tolower(h1.name.at(0)) < tolower(h2.name.at(0));
}
// ---------------------------------------------------------------
// Sparar register till fil
void save_register(string        const &file_name,
                   Register_Type const &reg) 
{
    ofstream reg_file {file_name};

    if (reg_file.is_open()) 
    {
        output_register(reg, reg_file);
    };

    reg_file.close();
}
// ---------------------------------------------------------------
// Sortera register baserat på hjältenamn oavset gemener och versaler
void sort_register(Register_Type &reg) 
{
    sort(reg.begin(), reg.end(), comp_heroes);
}
// ---------------------------------------------------------------
// Utskrift av register till output stream, en hjälte per linje
void output_register(Register_Type const &reg,
                     ostream             &output) 
{
    for (size_t i {0}; i < reg.size(); ++i) 
    {
        output_hero(output, reg.at(i));
        output << endl;
    };
}
// ---------------------------------------------------------------
// Utskrift av header för regsiterformat
void output_header(ostream &output) 
{
    output << "Hero name  Birth year  Weight  Hair color  Interests" << endl;
    output << "====================================================" << endl;
}
// ---------------------------------------------------------------