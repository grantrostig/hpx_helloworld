// Including 'hpx/hpx_main.hpp' instead of the usual 'hpx/hpx_init.hpp' enables
// to use the plain C-main below as the direct main HPX entry point.
#include <iostream>
#include <hpx/hpx_main.hpp>
#include <hpx/include/iostreams.hpp>

int main()
{
    // Say hello to the world!
    for (int var = 0; var < 20 ; ++var) {
       std::cout << var << ", ";
    }
    std::cout << std::endl;
    hpx::cout << "Hello World!\n" << hpx::flush << hpx::endl;
    hpx::cout << "Hello World!\n" << hpx::flush;
    hpx::cout << "Hello World!\n" << hpx::flush;
    hpx::cout << "Hello World!\n" << hpx::flush;
    hpx::cout << "Hello World!\n" << hpx::flush;
    return 0;
}

