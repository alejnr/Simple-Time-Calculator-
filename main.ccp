#include <iostream>
using namespace std;

// Function prototypes
void secondsToHours();
void secondsToMinutes();
void minutesToHours();
void hoursToSeconds();

int main() {

    int choice; // Variable to store user's menu choice

    do {
        // Display menu options
        cout << "..........................................\n";
        cout << "\n Welcome: Simple Time Calculator Menu:\n";
        cout << "..........................................\n";
        cout << endl; //space

        cout << "1. Convert seconds to hours\n";
        cout << "2. Convert seconds to minutes\n";
        cout << "3. Convert minutes to hours\n";
        cout << "4. Convert hours to seconds\n";
        cout << "5. Exit\n";
        cout << "Enter your choice (1-5): ";
        cin >> choice; //stores user input

        // Check for invalid input
        if (cin.fail()) { //invalid input
            cin.clear(); // Clear the error state
            cin.ignore(1000, '\n'); // Discard invalid input
            cout << "❌ Invalid input. Please enter a number between 1 and 5.\n"; // Feedback to user
            continue; // Restart the loop
        }

        // Process user's choice
        switch (choice) {
            case 1: secondsToHours(); break; // Convert seconds to hours
            case 2: secondsToMinutes(); break; // Convert seconds to minutes
            case 3: minutesToHours(); break; // Convert minutes to hours
            case 4: hoursToSeconds(); break; // Convert hours to seconds
            case 5: // Exit the program
                char confirmExit; //Asking for confirmation before exit
                cout << "⚠️ Are you sure you want to exit? (y/n): ";
                cin >> confirmExit;
                if (confirmExit == 'y' || confirmExit == 'Y') {
                    cout << "✅ Exiting program...\n";
                } else {
                    choice = 0; // Reset choice to continue
                }
                break; 
            default: cout << "❌ Invalid choice. Please try again.\n";
        }
    } while (choice != 5); // Loop until user chooses to exit


    return 0; // Exit the program
}

// Function to convert seconds to hours
void secondsToHours() {
    cout << endl; //space
    cout << "ℹ Converting seconds to hours...\n";
    
    double seconds;
    cout << "Enter the number of seconds: ";
    cin >> seconds;

    if (seconds > 1e12) { // Arbitrary large value limit
        cout << "Input is too large. Please enter a realistic time value.\n";
    } else if (seconds < 0) {  // checks for negative values
        cout << "Invalid input. Time cannot be negative.\n";
    } else {
         // Check for invalid input
        if (cin.fail()) {
            cin.clear(); // Clear the error state
            cin.ignore(1000, '\n'); // Discard invalid input
            cout << "Invalid input. Please enter a valid positive number of seconds.\n";
            return; // Exit the function early
        }

        double hours = seconds / 3600.0;
        cout <<"✅ " << seconds << " seconds is " << hours << " hours.\n";
    } 
}

// Function to convert seconds to minutes
void secondsToMinutes() {
    cout << endl;
    cout << "ℹ️ Converting seconds to minutes...\n";

    double seconds;
    cout << "Enter time in seconds: ";
    cin >> seconds;
    
   if (seconds > 1e12) { // Arbitrary large value limit
        cout << "⚠️ Input is too large. Please enter a realistic time value.\n";
    } else if (seconds < 0) {  // checks for negative values
        cout << "❌ Invalid input. Time cannot be negative.\n";
    } else {
         // Check for invalid input
        if (cin.fail()) {
            cin.clear(); // Clear the error state
            cin.ignore(1000, '\n'); // Discard invalid input
            cout << "❌ Invalid input. Please enter a valid positive number of seconds.\n";
            return; // Exit the function early
        }

        double minutes = seconds / 60.0;
        cout <<"✅ " << seconds << " seconds is " << minutes << " minutes.\n";
    }
}

// Function to convert minutes to hours
void minutesToHours() {
    cout << endl;
    cout << "ℹ️ Converting minutes to hours...\n";

    double minutes;
    cout << "Enter time in minutes: ";
    cin >> minutes;

    if (minutes > 1e12) { // Arbitrary large value limit
        cout << "⚠️ Input is too large. Please enter a realistic time value.\n";
    } else if (minutes < 0) {  // checks for negative values
        cout << "❌ Invalid input. Time cannot be negative.\n";
    } else {
         // Check for invalid input
        if (cin.fail()) {
            cin.clear(); // Clear the error state
            cin.ignore(1000, '\n'); // Discard invalid input
            cout << "❌ Invalid input. Please enter a valid positive number of seconds.\n";
            return; // Exit the function early
        }

        double hours = minutes / 60.0;
        cout <<"✅ " << minutes << " minutes is " << hours << " hours.\n";
    }
}

// Function to convert hours to seconds
void hoursToSeconds() {
    cout << endl;
    cout << "ℹ️ Converting hours to seconds...\n";
    
    double hours;
    cout << "Enter time in hours: ";
    cin >> hours;
    
    if (hours > 1e12) { // Arbitrary large value limit
        cout << "⚠️ Input is too large. Please enter a realistic time value.\n";
    } else if (hours < 0) {  // checks for negative values
        cout << "❌ Invalid input. Time cannot be negative.\n";
    } else {
         // Check for invalid input
        if (cin.fail()) {
            cin.clear(); // Clear the error state
            cin.ignore(1000, '\n'); // Discard invalid input
            cout << "❌ Invalid input. Please enter a valid positive number of seconds.\n";
            return; // Exit the function early
        }

        int seconds = hours * 3600;
        cout <<"✅ " << hours << " hours is equal to " << seconds << " seconds.\n";
    }
}

