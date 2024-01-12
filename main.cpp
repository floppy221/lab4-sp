#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    
    std::cout << "1  + 1 = " << calc.Add(1.0, 1.0) << std::endl;
    std::cout << "10 - 5 = " << calc.Sub(10.0, 5.0) << std::endl;

    return 0;
}
