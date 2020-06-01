//
// Created by 82734 on 2020/6/1.
//

#ifndef CPP_EXPERIMENTS_ACCOUNT_H
#define CPP_EXPERIMENTS_ACCOUNT_H

# include <string>

using namespace std;


class Account {
private:
    long int ID;
    string name;
    string password;
    string address;
    long int amount;
public:
    Account(long int id, string n, string p, string ad, long int am) {
        ID = id;
        name = n;
        password = p;
        address = ad;
        amount = am;
    }
};


#endif //CPP_EXPERIMENTS_ACCOUNT_H
