// kebje541: Samarbetat med jambe108, James Beise, samma program
// kebje541: Samarbetat med alean844, Alexander Andersson, samma program

#include "hero_handling.h"
#include "register_handling.h"

using namespace std;

// --------------------------------------------------
// Lägger till hero och sparar uppdaterad registerfil
void menu_add_hero(Register_Type       &hero_register,
                   string       const  &file_name) 
{
    Hero_Type hero{};

    while (true) 
    {
        cout << "Enter hero information:" << endl;
        get_hero(cin, hero);

        if (add_hero(hero, hero_register)) 
        {
            break;
        };

        cout << "Hero already in register. ";
    };

    save_register(file_name, hero_register);
    cout << "The hero was added to the register on file " << file_name << endl;
}
// -----------------------------------------------------
// Hittar och visar hjältar i registret enligt användarens intressen
void menu_find_match(Register_Type const &hero_register) 
{
    int           interest;
    vector<int>   interests;
    string        str;
    Register_Type matches;

    cout << "Enter your interests (at least one between 1 and 15): ";

    while (true) 
    {
        getline(cin, str);
        istringstream linestream(str);

        while (linestream >> interest) {
            interests.push_back(interest);
        };

        if (find_matches(interests, hero_register, matches)) 
        {
            break;
        };

        interests.clear();
    };
    
    // Utskrift av matchande hjältar
    cout << "There are " << matches.size() << " matching heroes." << endl;
    output_header(cout);
    output_register(matches, cout);
}
// -------------------------------------------------------------------
// Hämtar och returnerar menyval.
int get_selection()
{
    int selection;

    do 
    {
        cout << "Select: ";
        cin  >> selection;
    } while (selection < 1 or selection > 3);

    return selection;
}
// -------------------------------------------------------------------
// Menyval
void print_menu()
{
    cout << "1) Add new hero to register file" << endl;
    cout << "2) Find matching heroes" << endl;
    cout << "3) Quit program" << endl;
}
// -------------------------------------------------------------------
//                              MAIN
// -------------------------------------------------------------------
// Matchmaker 3000 program.
int main(int argc, char* argv[])
{
    int selection;
    string file_name;
    Register_Type hero_register;

    if (argc != 2)
    {
        cout << "Incorrect number of arguments!" << endl;
        cout << "Usage: " << argv[0] << " REGISTERFILE" << endl;
        return 1;
    }
    else
    {
        file_name = static_cast<string>(argv[1]);
        hero_register = load_register(file_name);

        cout << "Welcome to Hero Matchmaker 3000!" << endl;

        do 
        {
            print_menu();
            selection = get_selection();
            cin.ignore(1000, '\n');

            if (selection == 1) 
            {
                menu_add_hero(hero_register, file_name);
            };

            if (selection == 2) 
            {
                menu_find_match(hero_register);
            };
        } while(selection != 3);

        cout << "Terminating Hero Matchmaker 3000!" << endl;
    }
}