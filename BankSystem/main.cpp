# include <iostream>
# include <string>
# include <fstream>

# include <io.h>
# include "System.h"

using namespace std;

int main() {
    System bankSystem;

    // check if system data exits
    string sysPath = "C:\\Users\\82734\\Desktop\\BankSystem\\DataOfBank";    // TODO : note in the report
    if (0 != _access(sysPath.c_str(),0)) {
        // build the data fold and initialize the system if it is the first time.
        string cmd = "mkdir " + sysPath;
        system(cmd.c_str());
    }

    // check Account
    cout<<"Sir. Do you have an account?"<<endl<<"Please input Y/N"<<endl;
    string tmpIfAccount;
    cin>>tmpIfAccount;
    if (tmpIfAccount == "N") {
        // initialize an account
        bankSystem.initAccount();
    } else if (tmpIfAccount == "Y") {
        cout << "Sir. I have to check your name and password" << endl;
        string tmp_name;
        string tmp_password;
        long int tmp_id = 0;
        cout << "Please input your Account NAME" << endl;
        cin >> tmp_name;

        // Search if NAME exist
        // no account found
        if (bankSystem.searchAccount(tmp_name)) {
            cout << "Sir. There is no such account existing." << endl;
            return 0;
        }

        // check password
        cout << "Please input your password" << endl;
        cin >> tmp_password;
        if (!bankSystem.checkPassword(tmp_name, tmp_password)) {
            cout<<"Sorry Sir. The password is incorrect."<<endl;
            return 0;
        }

        // input cmd
        cout << "Hello Sir. What can I do for you?" << endl;
        cout << "deposit, withdraw or inquire?"<<endl;
        string cmd;
        cin >> cmd;
        if (cmd == "deposit") {
            int de_amount;
            cout<<"Sir. How much do you want to deposit?"<<endl;
            cin>>de_amount;
            bankSystem.deposit(tmp_name, de_amount);
        } else if (cmd == "withdraw") {
            int wi_amount;
            cout<<"Sir. How much do you want to withdraw?"<<endl;
            cin>>wi_amount;
            bankSystem.withdraw(tmp_name, wi_amount);
        } else if (cmd == "inquire") {
            bankSystem.inquire(tmp_name);
        } else {
            cout << "Sir. Please check the command." << endl;
            return 0;
        }
    } else {
        cout<<"Sir. The command is Error."<<endl;
        return 0;
    }
    return 0;
}