This abuild-contrib collection is distributed and release separately
from abuild itself, but it is released under the same terms as abuild
(version 2 of the Artistic License).

This build tree contains various utility build items that may be
useful across a wide range of projects or systems.

Each plugin in the plugins in the plugins directory has a name that
starts with the the prefix "contrib-plugin." to prevent it from
being accidentally used as a dependency.

Each build item has its own README.txt which describes what it does
and how to use it.

Many build items in this build tree contain nested build trees under
the "test" directory.  Whenever there is a test directory, the
README.txt in the test directory explains how to run the tests.  Not
all of the tests are fully automated.
