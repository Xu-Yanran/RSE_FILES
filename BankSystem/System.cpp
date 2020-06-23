//
// Created by 82734 on 2020/6/23.
//

#include "System.h"
# include <iostream>
# include <fstream>
# include <io.h>
# include "Account.h"

using namespace std;

long int System::numAcc = 0;
string sysPath = "C:\\Users\\82734\\Desktop\\BankSystem\\DataOfBank";

void System::initAccount() {
    string in_name;
    string in_password;
    string in_address;
    cout<<"That's alright, Sir. I will help to create an account."<<endl;
    cout<<"Please input your name"<<endl; cin>>in_name;
    cout<<"Please input your passwword"<<endl; cin>>in_password;
    cout<<"Please input your address"<<endl; cin>>in_address;
    Account acc(numAcc, in_name, in_password, in_address, 0);
    // insert new account to account map.
    accountMap.insert(make_pair(numAcc, acc));
    // Show the info of the client
    cout << "Sir. Your ID is "<<numAcc<<endl;
    System::numAcc += 1;

    // storage
    // build a folder containing the info of cliend
    string cmd = "mkdir " + sysPath + "\\" + in_name;
    system(cmd.c_str());
    // store the info into it.
    ofstream osm(sysPath + "\\" + in_name + "\\info.txt", ios::out|ios::binary);
    osm.write((char*)&acc,sizeof(Account));
    osm.close();
}

bool System::searchAccount(string name) {
//    return (accountMap.find(name) == accountMap.end());
    return (0 != _access((sysPath + "\\" + name).c_str(),0));
}

bool System::checkPassword(string n, string p) {
//    // TODO bug is here
//    unordered_map<long int, Account>::iterator iter;
//    iter = accountMap.find(id);
//    return ((*iter).second.getPassword() == p);
////    return (accountMap[id].getPassword() == p);   TODO: why this type is incorrect
    Account acc;
    ifstream ism(sysPath + "\\" + n + "\\info.txt", ios::in|ios::binary);
    ism.read((char*)&acc,sizeof(Account));
    string pwd = acc.getPassword();
    ism.close();
    return (pwd == p);
}

void System::deposit(int am) {
    // TODO

    ;
}

void System::withdraw(int am) {
    // TODO
    ;
}

void System::inquire() {
    // TODO
    ;
}
