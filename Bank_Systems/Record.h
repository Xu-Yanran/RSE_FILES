//
// Created by 82734 on 2020/6/1.
//

#ifndef CPP_EXPERIMENTS_RECORD_H
#define CPP_EXPERIMENTS_RECORD_H

# include <string>
# include "Account.h"

using namespace std;


class Record {

private:
    long int ID;
    string date;
    string type;
    long int amount;
//    Account *client;      TODO: add a client
public:
    Record(long int id, string d, string t, long int a);

};


#endif //CPP_EXPERIMENTS_RECORD_H
