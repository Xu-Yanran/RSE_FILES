//
// Created by 82734 on 2020/6/1.
//

#ifndef CPP_EXPERIMENTS_SYSTEM_H
#define CPP_EXPERIMENTS_SYSTEM_H

# include <string>
# include <unordered_map>
# include <list>
# include "Account.h"
# include "Record.h"


using namespace std;

class System {
//    long int numAcc = 0;    // TODO: temp account ID
    unordered_map<long int, Account> accountMap;
public:
    static long int numAcc;    // TODO: temp account ID
    System() {};
    void initAccount();
    void deposit(int am);
    void withdraw(int am);
    void inquire();
    bool searchAccount(long int id);
    bool checkPassword(long int id, string p);
};


#endif //CPP_EXPERIMENTS_SYSTEM_H
