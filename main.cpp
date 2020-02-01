#include <string>
#include <iostream>
#include <fmt/format.h>

int main()
{
    std::cout << fmt::format("I'd rather be {1} than {0}.\n", "right", "happy");
}

