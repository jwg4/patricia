#include "bitwise.h"

INTEGER lowest_one(INTEGER x){
    return x & (0 - x);
}
