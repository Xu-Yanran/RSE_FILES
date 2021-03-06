# include <iostream>
# include <string>
# include <fstream>

# include <io.h>
# include "System.h"

using namespace std;

int main() {
    System bankSystem;

    // check if system data exits
    string sysPath = "C:\\Users\\82734\\Desktop\\Bank_Systems\\DataOfBank";    // TODO : note in the report
    if (0 != _access(sysPath.c_str(),0)) {
        // build the data fold and initialize the system if it is the first time.
        string cmd = "mkdir " + sysPath;
        system(cmd.c_str());
        System bankSystem;      // todo: to check where it should be put
    } else {
        // read system data from fold
        // TODO: how to convert the file to bankSystem?
        ifstream file("C:\\Users\\82734\\Desktop\\Bank_Systems\\DataOfBank\\sysData.txt",ios::out | ios::binary );
        // TODO
        if (!file.is_open()) {
            cout<<"error";
            return 0;
        }
        char* temp = new char[sizeof(System)];
        System bankSystem = *(System*)(temp);
        file.close();
        cout<<"num:::::"<<bankSystem.numAcc;        // TODO
    }

//    // initialize a system
//    System bankSystem; //   todo: to be deleted

    // check Account
    cout<<"Sir. Do you have an account?"<<endl<<"Please input Y/N"<<endl;
    string tmpIfAccount;
    cin>>tmpIfAccount;
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
        // no account found
        if (bankSystem.searchAccount(tmp_id)) {
            cout << "Sir. There is no such account existing." << endl;
            return 0;
        }

        // check password
        cout << "Please input your password" << endl;
        cin >> tmp_password;
        if (!bankSystem.checkPassword(tmp_id, tmp_password)) {
            cout<<"Sorry Sir. The password is incorrect."<<endl;
            return 0;
        }

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

    // save system data
    ofstream file("C:\\Users\\82734\\Desktop\\Bank_Systems\\DataOfBank\\sysData.txt",ios::out | ios::binary );
    file.write((char*)&bankSystem, sizeof(bankSystem));
    file.close();

    return 0;
}
