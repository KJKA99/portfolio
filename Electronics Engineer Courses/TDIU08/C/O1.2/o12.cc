// -- kebje541: Samarbetat med jambe108, James Beise, samma program
#include <iostream>
#include <iomanip>
#include <string>
#include <cctype>
#include <cmath>

using namespace std;

int main() {
////////////////// PART 1 /////////////////////////
    int start_value{};
    int end_value{};
    double kelvin{273.15};
    int celsius{};
    double fahrenheit{};
    double reamur{};
    double abs_zero{-273.15};

    cout << "Del 1: Temperaturtabell" << endl;

    do {
        cout << "Ange startvärde: ";
        cin >> start_value;

        if (static_cast<double>(start_value) < abs_zero) {
            cout << "Felaktigt startvärde!" << endl;
        }
    } while (static_cast<double>(start_value) < abs_zero);

    do {
        cout << "Ange slutvärde: ";
        cin >> end_value;

        if (start_value > end_value) {
            cout << "Felaktigt slutvärde!" << endl;
        }
    } while (end_value < start_value);

    cout << "Celsius   Kelvin   Fahrenheit   Reaumur" << endl;
    cout << "---------------------------------------" << endl;

  for (int i = start_value; (i <= end_value); i++) {
    celsius = i;
    kelvin = static_cast<double>(celsius) + 273.15;
    fahrenheit = (static_cast<double>(celsius) * 1.8) + 32;
    reamur = (static_cast<double>(celsius) * 0.8);

    cout << setw(7)  << celsius ;
    cout << setw(9) << fixed << setprecision(2) << kelvin;
    cout << setw(13) << fixed << setprecision(2) << fahrenheit;
    cout << setw(10) << fixed << setprecision(2) << reamur << endl;
  }

    cin.ignore(10000, '\n');
    cout << "---------------------------------------";

////////////////// PART 2 //////////////////////////
    int alphabet{}, numbers{}, whitespace{};
    char character{};

    cout << "\n\n" << "Del 2: Teckenhantering" << "\n";

    for (int i{0}; i < 10; i++) {
        cin.get(character);

        if (isspace(character)) {
            whitespace++;
        } else if (isalpha(character)) {
            alphabet++;
        } else if (isdigit(character)) {
            numbers++;
        }
    }

    cin.ignore(10000, '\n');

    cout << "Texten innehöll:" << endl;
    cout << "Alfabetiska tecken:" << alphabet << endl;
    cout << "Siffertecken......:" << numbers << endl;
    cout << "Vita tecken.......:" << whitespace << endl;

////////////////// PART 3 //////////////////////////
    string text_string{}, shortest_word{}, longest_word{};
    int wordQuantity{}, charQuantity{};

    cout << "\n" << "Del 3: Ordhantering" << endl;
    cout << "Mata in en text:" << endl;

    while (cin >> text_string) {
        charQuantity += text_string.size();

        if (shortest_word.empty() || text_string.size() < shortest_word.size()) {
            shortest_word = text_string;
        }

        if (longest_word.empty() || text_string.size() > longest_word.size()) {
            longest_word = text_string;
        }

        wordQuantity++;
    }

    if (text_string.empty()) {
        cout << "\n" << "Inga ord matades in." << endl;
    } else {
        cout << "\n" << "Texten innehöll " << wordQuantity << " ord." << endl;
        cout << "Det kortaste ordet var " << '"' << shortest_word << '"' << " med " << shortest_word.size()
             << " tecken." << endl;
        cout << "Det längsta ordet var " << '"' << longest_word << '"' << " med " << longest_word.size()
             << " tecken." << endl;
        cout << "Medelordlängden var "
            << fixed << setprecision(1) << static_cast<double>(charQuantity) / static_cast<double>(wordQuantity)
            << " tecken." << endl;
    }

    return 0;
}
