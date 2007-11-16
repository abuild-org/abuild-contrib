#ifndef __A_HH__
#define __A_HH__

#include <string>

class A
{
  public:
    /**
     * A constructor.
     * This is not a very interesting constructor.
     */
    A();
    /**
     * A destructor.
     * This is not a very interesting destructor either.
     */
    virtual ~A();

    /**
     * A public function.
     * This function doesn't do anything useful.
     * @param p1 an integer argument
     */
    void f1(int p1);

  protected:
    /**
     * A protected function.
     * @param str a string
     */
    void f2(std::string const&);

  private:
    /**
     * A private function.
     * @param q some argument
     * @param r some other argument
     * @return the sum of the two arguments
     */
    int f3(int, int);

    int n;
};

#endif // __A_HH__
