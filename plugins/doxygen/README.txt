This plugin provides support for generating documentation with
doxygen.  The basic mode of operation is that doxygen -g is run
locally to generate a doxygen settings file, and variables in that
file are overridden by a series of override files.

We define the variable DOXYGEN_DATAFILES in plugin.interface.  Build
items that want to define project-wide local settings may create a
settings file with doxygen variable assignments in it and may add that
file to DOXYGEN_DATAFILES in their Abuild.interface files.

A local build item may set DOXYGEN_SETTINGS to add further overrides.
It may also set DOXYGEN_INPUT to a list of additional directories
beyond the source directory to scan for doxygen documentation.

The interface variable DOXYGEN_TAGFILES may be set in a build item's
Abuild.interface file to the name of a doxygen tag file.  This will be
used to make cross references work across build items.  For this to
work, the tags file mentioned in DOXYGEN_TAGFILES in the
Abuild.interface file must be the same as the value of
GENERATE_TAGFILE in your override file.

For an example of putting this all together, please see the test
directory.  See also the rules-help and interface-help targets in the
plugin.mk file.  Here are some additional notes that supplement that
information.

In your doxygen settings file, you will always want to define the
following variable:

  PROJECT_NAME
      The the project name to show up on the main page

If anything depends on your item, you will always want to define this:

  GENERATE_TAGFILE
      Filename of a doxygen filename to reference. This is the file

Ordinarily, you do not need to modify INPUT as abuild's doxygen plugin
automatically searches the current build item.  You may, however,
append to INPUT:

  INPUT
      A whitespace delimited list of paths and filenames to use for
      generating documentation.  Doxygen will recurse through
      directories looking for files matcing the default list.

Here are some other variables you may wish to define:

  PREDEFINE
      Preprocessor symbols to define.  A useful one might be __cplusplus
      that should be referenced in the component public interface.

  IMAGE_PATH
      Image path used to locate images referenced in documentation.

  ALIASES
      Additional custom aliases that should be provided to doxygen.

  TAGFILES
      Additional doxygen tag files that should used in generating the
      documentation.  Note: This variable should normally be included
      through the Interfaces mechanism of abuild.  However, there may
      be cases where there are non-abuild components that generate
      tag files that we would like to include.
