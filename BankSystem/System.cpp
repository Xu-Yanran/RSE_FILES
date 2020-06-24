//
// Created by 82734 on 2020/6/23.
//

#include "System.h"
# include <iostream>
# include <fstream>
# include <io.h>
# include "Account.h"
# include "Record.h"
# include <ctime>

using namespace std;

long int System::numAcc = 0;
string sysPath = "C:\\Users\\82734\\Desktop\\BankSystem\\DataOfBank";

void System::initAccount() {
    string in_test;
    char in_name[20];
    char in_password[20];
    char in_address[20];
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
    acc.password = "123";       // TODO: the password cannot be implement properly

    // storage
    // build a folder containing the info of cliend
    string cmd = "mkdir " + sysPath + "\\" + in_name;
    system(cmd.c_str());
    string rcmd = "mkdir " + sysPath + "\\" + in_name + "\\" + "records";
    system(rcmd.c_str());
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
    char* pwd = acc.getPassword();
    cout<<"id: "<<acc.ID<<endl;
    cout<<"pass: "<< pwd<<endl;
    cout<<"name: "<<acc.name<<endl;
    ism.close();
    return (pwd == p);
}

void System::deposit(string n, long int am) {
    Account acc;
    ifstream ism(sysPath + "\\" + n + "\\info.txt", ios::in|ios::binary);
    ism.read((char*)&acc,sizeof(Account));
    acc.changeAmount(am);
    acc.addRecordAccount();
    cout<<"Sir. Your balance is "<<acc.getAmount()<<endl;
    ofstream osm(sysPath + "\\" + n + "\\info.txt", ios::out|ios::binary);
    osm.write((char*)&acc,sizeof(Account));
    osm.close();

    // store records.
    time_t t = time(NULL);
    char ch[64] = {0};
    strftime(ch, sizeof(ch) - 1, "%Y-%m-%d %H:%M:%S", localtime(&t));
    Record rec(acc.getRecordAccount(), ch, "deposit", am);
    string tmp = to_string(acc.getRecordAccount());
    rec.display();
    ofstream rosm(sysPath + "\\" + n + "\\" + "records" + "\\" + tmp + ".txt", ios::out|ios::binary);
    rosm.write((char*)&rec,sizeof(Record));
    rosm.close();
}

void System::withdraw(string n, int am) {
    Account acc;
    ifstream ism(sysPath + "\\" + n + "\\info.txt", ios::in|ios::binary);
    ism.read((char*)&acc,sizeof(Account));
    if (am > acc.getAmount()) {
        cout<<"Sir, your balance is insufficient.\n";
        return;
    } else {
        acc.changeAmount(-am);
        acc.addRecordAccount();
        cout<<"Sir. Your balance is "<<acc.getAmount()<<endl;
        ofstream osm(sysPath + "\\" + n + "\\info.txt", ios::out|ios::binary);
        osm.write((char*)&acc,sizeof(Account));
        osm.close();

        // store records.
        time_t t = time(NULL);
        char ch[64] = {0};
        strftime(ch, sizeof(ch) - 1, "%Y-%m-%d %H:%M:%S", localtime(&t));
        Record rec(acc.getRecordAccount(), ch, "withdraw", am);
        rec.display();
        string tmp = to_string(acc.getRecordAccount());
        ofstream rosm(sysPath + "\\" + n + "\\" + "records" + "\\" + tmp + ".txt", ios::out|ios::binary);
        rosm.write((char*)&rec,sizeof(Record));
        rosm.close();
    }
}

void System::inquire(string n) {
    Record rec;
    for (int i = 1; !(0 != _access((sysPath + "\\" + n + "\\" + "records" + "\\" + (to_string(i)) + ".txt").c_str(),0)); i++) {
        ifstream ism(sysPath + "\\" + n + "\\" + "records" + "\\" + to_string(i) + ".txt", ios::in | ios::binary);
        ism.read((char *) &rec, sizeof(Record));
        rec.display();
        ism.close();
    }
}
