// -- kebje541: Samarbetat med jambe108, James Beise, samma program
#include <iostream>
#include <iomanip>
#include <string>
#include <sstream>

using namespace std;

int main()

{
    
    int integer_number;
    double float_number;
    char character;
    string str_input;
      
    cout << "Skriv in ett heltal: ";
    cin >> integer_number;
    cout << "Du skrev in heltalet: " << integer_number << endl << endl;

    cin.clear();
    cin.ignore(10000, '\n');

    cout << "Skriv in fem heltal: ";
    cin >> integer_number;
    cout << "Du skrev in heltalen: ";
    cout << integer_number << " ";
    cin >> integer_number;
    cout << integer_number << " ";
    cin >> integer_number;
    cout << integer_number << " ";
    cin >> integer_number;
    cout << integer_number << " ";
    cin >> integer_number;
    cout << integer_number << "\n" << endl;
    
    cin.ignore(10000, '\n');

    cout << "Skriv in ett flyttal: ";
    cin >> float_number;
    cout << "Du skrev in flyttalet: " << fixed << setprecision(3) << float_number << "\n" << endl;
  

    cin.ignore(10000, '\n');

    cout << "Skriv in ett heltal och ett flyttal: ";
    cin >> integer_number >> float_number;
    cout << "Du skrev in heltalet:" << right << setw(10) << integer_number << "\n";
    cout << "Du skrev in flyttalet:" << right << setw(9) << fixed << setprecision(4) << float_number << "\n" << endl;
  
    cin.ignore(10000, '\n');

    cout << "Skriv in ett flyttal och ett heltal: ";
    cin >> float_number >> integer_number;
    cout << "Du skrev in heltalet:" << setfill('-') << setw(10) << integer_number << "\n";
    cout << "Du skrev in flyttalet:" << setfill('-') << setw(9) << fixed << setprecision(4) << float_number << "\n" << endl;
 
    cin.ignore(10000, '\n');

    cout << "Skriv in ett tecken: ";
    cin >> character;
    cout << "Du skrev in tecknet: " << character << "\n" << endl;

    cin.ignore(10000, '\n');

    cout << "Skriv in ett ord: ";
    cin >> str_input;
    cout << "Du skrev in ordet: " << str_input << "\n" << endl;

    cin.ignore(10000, '\n');

    cout << "Skriv in ett heltal och ett ord: ";
    cin >> integer_number >> str_input;
    cout << "Du skrev in heltalet |" << integer_number << "| och ordet |" << str_input << "|." << "\n" << endl;

    cin.ignore(10000, '\n');

    cout << "Skriv in ett tecken och ett ord: ";
    cin >> character >> str_input;
    cout << "Du skrev in \"" << str_input << "\" och \"" << character << "\"." << "\n" << endl;

    cin.ignore(10000, '\n');

    cout << "Skriv in ett ord och ett tecken: ";
    cin >> str_input >> character;
    cout << "Du skrev in \"" << str_input << "\" och \"" << character << "\"." << "\n" << endl;

    cin.ignore(10000, '\n');

    cout << "Skriv in en textrad: ";
    getline(cin, str_input);
    cout << "Du skrev in \"" << str_input << "\"." << "\n" << endl;;


    cout << "Skriv in en till rad text: ";
    getline(cin, str_input);
    cout << "Du skrev in \"" << str_input << "\"." << "\n" << endl;;


    cout << "Skriv in en rad med tre ord: ";
    cin >> str_input;
    cout << "Du skrev in: " << '"' << str_input << '"' << ", ";
    cin >> str_input;  
    cout << '"' << str_input << '"' << " och ";
    cin >> str_input;
    cout << '"' << str_input << '"' << "." << endl;

    return 0;
}
