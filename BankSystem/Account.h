//
// Created by 82734 on 2020/6/23.
//

#ifndef BANKSYSTEM_ACCOUNT_H
#define BANKSYSTEM_ACCOUNT_H

# include <fstream>
# include <string>
# include <unordered_map>
# include <list>
# include "Account.h"
# include "Record.h"



using namespace std;

class Account {
private:
    long int ID;
    string name;
    string password;
    string address;
    long int amount;

//    list<Record> recordList;        // TODO : here is the bug. But do not know why
public:
    Account() {;}
    Account(long int id, string n, string p, string ad, long int am) {
        ID = id;
        name = n;
        password = p;
        address = ad;
        amount = am;
    }

    string getPassword();
    long int getAmount();
};


#endif //BANKSYSTEM_ACCOUNT_H
