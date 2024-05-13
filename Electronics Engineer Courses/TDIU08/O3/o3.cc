// kebje541: Samarbetat med jambe108, James Beise, samma program
// kebje541: Samarbetat med alean844, Alexander Andersson, samma program

#include <iostream>
#include <iomanip>
#include <string>
#include <cctype>
#include <ctype.h>
#include <random>
#include <iterator>
#include <algorithm>
#include <vector>

using namespace std;

// Struct to represent a person participating in the event
struct Person {
    string name;
    string surname;
    string club;
    vector<double> times;
};

// Function to compare two Person objects based on their first time
bool comparePersonTimes(const Person& participant1, const Person& participant2) {
    return participant1.times[0] < participant2.times[0];
}

// Function to input participant information (name, surname, club)
void inputParticipants(vector<Person>& participants) {
    Person person;
    cout << "Mata in deltagare:" << endl;

    while (true) {
        cin >> person.name;
        if (person.name == "KLAR") {
            cin.ignore();
            break;
        }

        cin >> person.surname;
        getline(cin, person.club);

        participants.push_back(person);
    }
}

// Function to input race times for each participant
void enterTimes(vector<Person>& participants) {
    double temp;

    for (unsigned int i = 0; i < participants.size(); i++) {
        cout << "Tider " << participants[i].name << ": ";

        while (true) {
            cin >> temp;
            if (temp == -1.00) {
                break;
            }

            participants[i].times.push_back(temp);
            sort(participants[i].times.begin(), participants[i].times.end());
        }
    }

    sort(participants.begin(), participants.end(), comparePersonTimes);
}

// Function to print a table of participant information and times
void printTable(const vector<Person>& participants) {
    cout << "Efternamn  " << " " << "Förnamn ";
    cout << right << setw(17) << "Klubb: " << "Tider" << endl;
    cout << "==========================================" << endl;

    for (unsigned int i = 0; i < participants.size(); i++) {
        cout << right << setw(9) << participants[i].surname << setw(10) << participants[i].name;
        cout << setw(16) << participants[i].club << ":";

        for (double time : participants[i].times) {
            cout << fixed << setprecision(2) << " " << time;
        }

        cout << endl;
    }
}


// Main program
int main() {
    Person person;
    vector<Person> participants;
    random_device r;

    // Call functions to input data, enter times, and print the table
    inputParticipants(participants);
    enterTimes(participants);
    printTable(participants);

    return 0;
}