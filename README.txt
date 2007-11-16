This abuild-contrib collection is distributed and release separately
from abuild itself, but it is released under the same terms as abuild
(version 2 of the Artistic License).

This build tree contains various utility build items that may be
useful across a wide range of projects or systems.

There are several plugins in the plugins directory.  Each has a name
that starts with the the prefix "contrib-plugin." to prevent them from
being accidentally used as a dependency.

Each build item has its own README.txt which describes what it does
and how to use it.

Many build items in this build tree contain nested build trees under
the "test" directory.  These build list this tree as an external.  The
reason for this approach is that it allows other build trees to make
use of this one without having to pull in all the test trees as well.
In addition, many of the test trees have to enable certain plugins
that we wouldn't want enabled in this tree.

Whenever there is a test directory, the README.txt in the test
directory explains how to run the tests.  Not all of the tests are
fully automated.
