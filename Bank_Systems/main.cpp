# include <iostream>
# include <string>
# include "System.cpp"
# include "Account.cpp"

using namespace std;

int main() {
    // initialize a system
    System bankSystem;

    // check Account
    cout<<"Sir. Do you have an account?"<<endl<<"Please input Y/N"<<endl;
    string tmpIfAccount;
    if (tmpIfAccount == "N") {
        // initialize an account
        bankSystem.initAccount();
    } else if (tmpIfAccount == "Y") {
        cout << "Sir. I have to check your ID and password" << endl;
        long int tmp_id;
        string tmp_password;
        cout << "Please input your Account ID" << endl;
        cin >> tmp_id;

        // Search if ID exist
        // TODO
        // If no Account
        cout << "Sir. There is no such account existing." << endl;

        // check password
        cout << "Please input your password" << endl;
        cin >> tmp_password;
        // TODO

        // input cmd
        cout << "Hello Sir. What can I do for you?" << endl;
        string cmd;
        cin >> cmd;
        if (cmd == "deposit") {
            int de_amount;
            cout<<"Sir. How much do you want to deposit?"<<endl;
            cin>>de_amount;
            // TODO
            bankSystem.deposit(de_amount);
        } else if (cmd == "withdraw") {
            int wi_amount;
            cout<<"Sir. How much do you want to withdraw?"<<endl;
            cin>>wi_amount;
            // TODO
            bankSystem.withdraw(wi_amount);
        } else if (cmd == "inquire") {
            // TODO
            bankSystem.inquire();
        } else {
            cout << "Sir. Please check the command." << endl;
            return 0;
        }
    } else {
        cout<<"Sir. The command is Error."<<endl;
        return 0;
    }
}
