#include <tps-lib.hh>

int main()
{
#ifdef TPS_LIB
    f();
#endif
    return 0;
}
