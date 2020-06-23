//
// Created by 82734 on 2020/6/23.
//

#ifndef BANKSYSTEM_SYSTEM_H
#define BANKSYSTEM_SYSTEM_H

# include <string>
# include <unordered_map>
# include <list>
# include "Account.h"
# include "Record.h"

using namespace std;

class System {
    unordered_map<long int, Account> accountMap;
//    list<Record> recordList;
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


#endif //BANKSYSTEM_SYSTEM_H