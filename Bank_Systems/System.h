//
// Created by 82734 on 2020/6/1.
//

#ifndef CPP_EXPERIMENTS_SYSTEM_H
#define CPP_EXPERIMENTS_SYSTEM_H

# include <string>

using namespace std;

class System {
    long int numAcc = 0;    // TODO: temp account ID
public:
    void initAccount();
    void deposit(int am);
    void withdraw(int am);
    void inquire();
};


#endif //CPP_EXPERIMENTS_SYSTEM_H
