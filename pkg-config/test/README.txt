This build tree tests the contrib-pkg-config build item by creating a
library and pretending that it's a a third party library.  The fake
third party library is in the tps-lib-impl directory (tps = third
party software).  The version-specific build item that provides an
interface to it is called tps-lib-1.  The version-neutral build item
is tps-lib, and the program that uses it is called prog.

To run this test, first go to the tps-lib-impl directory, which is a
self-contained build tree, and run abuild there.  Then go to the prog
directory and run abuild -d check.

The only thing about this test that's really different from a real
implementation is that we are actually using abuild to build the
"third party" library.  In case it isn't blindingly obvious, this is
not to be taken as an example of how to make one abuild-based item
depend on another!
