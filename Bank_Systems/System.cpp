//
// Created by 82734 on 2020/6/1.
//
# include <iostream>
# include "System.h"
# include "Account.cpp"

using namespace std;


void System::initAccount() {
    string in_name;
    string in_password;
    string in_address;
    cout<<"That's alright, Sir. I will help to create an account."<<endl;
    cout<<"Please input your name"<<endl; cin>>in_name;
    cout<<"Please input your passwword"<<endl; cin>>in_password;
    cout<<"Please input your address"<<endl; cin>>in_address;
    Account acc(numAcc, in_name, in_password, in_address, 0);
    // TODO : Store it in the fold

    numAcc += 1;
}

