#include "A.hh"

class B: public A
{
  public:
    /**
     * virtual destructor
     */
    virtual ~B()
    {
    }
};

int main()
{
    B b;
    b.f1(5);
    return 0;
}
