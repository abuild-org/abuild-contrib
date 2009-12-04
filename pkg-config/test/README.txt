This build tree tests the contrib-pkg-config build item by creating a
library and pretending that it's a a third party library.  The fake
third party library is in the tps-lib-impl directory (tps = third
party software).  The version-specific build item that provides an
interface to it is called tps-lib-1.  The version-neutral build item
is tps-lib, and the program that uses it is called prog.

The only thing about this test that's really different from a real
implementation is that we are actually using abuild to build the
"third party" library.  To facilitate running the test suite, the
third party library's build is hooked into this build, but we use
pkg-config instead of abuild interface files to see it.  In case it
isn't blindingly obvious, this is not intended to be an example of
how to use abuild to reach libraries we build ourselves!  This is to
exercise using pkg-config from abuild.  Just pretend tps-lib-impl is a
pre-built, external library.

