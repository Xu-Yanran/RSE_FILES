//
// Created by 82734 on 2020/6/1.
//

#ifndef CPP_EXPERIMENTS_ACCOUNT_H
#define CPP_EXPERIMENTS_ACCOUNT_H

# include <string>
# include <iostream>
# include <list>
# include "Record.h"

using namespace std;


class Account {
private:
    long int ID;
    string name;
    string password;
    string address;
    long int amount;

    list<Record> recordList;        // TODO : here is the bug. But do not know why
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
};


#endif //CPP_EXPERIMENTS_ACCOUNT_H
