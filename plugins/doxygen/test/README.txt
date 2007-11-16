To test the plugin, run abuild -b all doc.  Then, in a browser, look
at

B/abuild-<platform>/html/index.html

You should see a page that says "B Documentation".  Click on Classes.
You should see "B".  Click on "B".  You should see a description of
B's destructor and a class hierarchy diagram showing "B" and "A".
Clicking on "A" should take you to A's documentation.  You should see
A's constructor and destructor as well as member functions f1, f2, and
f3 and member variable n.

This also serves as an example of how to use the doxygen plugin.  This
tree consists of three build items: doxygen-tree-settings declares a
settings file with some tree-wide overrides.  It is also set up to be
a plugin so that everyone gets these settings automatically.  Notice
that it appends them to DOXYGEN_DATAFILES in its plugin.mk.  (Since
it's a plugin, it can't refer to a variable defined in another
plugin's plugin.interface: all plugins have to be able to be parsed
independently.)  We also have two build items: A and B.  B depends on
A.  Notice how A uses GENERATE_TAGFILE in its doxygen.settings file
and DOXYGEN_TAGFILES in its Abuild.interface.
