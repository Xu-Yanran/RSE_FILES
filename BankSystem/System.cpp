//
// Created by 82734 on 2020/6/23.
//

#include "System.h"
# include <iostream>
# include "Account.h"

using namespace std;

long int System::numAcc = 0;

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
}

bool System::searchAccount(long int id) {
    return (accountMap.find(id) == accountMap.end());
}

bool System::checkPassword(long int id, string p) {
    // TODO bug is here
    unordered_map<long int, Account>::iterator iter;
    iter = accountMap.find(id);
    return ((*iter).second.getPassword() == p);
//    return (accountMap[id].getPassword() == p);   TODO: why this type is incorrect
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
