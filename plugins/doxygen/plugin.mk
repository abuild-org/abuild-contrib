rules-help::
	@echo
	@echo "** Help for users of plugin.doxygen **"
	@echo
	@echo "This plugin (plugin.doxygen) provides support for"
	@echo "generation of documentation with doxygen.  If the"
	@echo "DOXYGEN_SETTINGS variable is set to the name of a local file,"
	@echo "then the doc target will generate doxygen documentation."
	@echo
	@echo "In order to generate proper documentation, you must create a"
	@echo "local doxygen settings file that overrides certain doxygen"
	@echo "variables.  At a minimum, you should set the PROJECT_NAME"
	@echo "variable.  If anything depends on your build item, you should"
	@echo "also set the GENERATE_TAGFILE variable.  If you do, you should"
	@echo "make sure that you have"
	@echo
	@echo -n '  DOXYGEN_TAGFILES = $$'
	@echo "(ABUILD_OUTPUT_DIR)/your-file.tag"
	@echo
	@echo "in your Abuild.interface file, where your-file.tag is the value"
	@echo "you assigned to GENERATE_TAGFILE in your settings file.  Note"
	@echo "that tags files must be unique across a doxygen project, so"
	@echo "unless you have a compelling reason to do otherwise, use"
	@echo "build-item-name.tag as the name of your tag file."
	@echo
	@echo "In addition to DOXYGEN_SETTINGS, you may optionally set"
	@echo "DOXYGEN_INPUT to a list of additional directories to search for"
	@echo "source code and DOXYGEN_DATAFILES to a list of additional"
	@echo "settings files beyond DOXYGEN_SETTINGS.  Note that"
	@echo "DOXYGEN_DATAFILES may have been appended to from other items'"
	@echo "Abuild.interface files, so you should generally append to it"
	@echo "with += if you are going to set it locally."
	@echo
	@echo "For an example of using this, please look at the tests for the"
	@echo "plugin.  These can be found in this directory:"
	@echo $(abspath $(abDIR_contrib-plugin.doxygen)/test)
	@echo

interface-help::
	@echo
	@echo "** Help for Abuild.interface for doxygen users **"
	@echo
	@echo "If your build item is providing project-wide settings, you"
	@echo "should add the name of the settings file to the DOXYGEN_DATAFILES"
	@echo "variable.  If you have defined a tag file using the"
	@echo "GENERATE_TAGFILE doxygen variable in your settings file,"
	@echo "you should assign the name of that file, which is created in"
	@echo "the output file, in DOXYGEN_TAGFILES.  Run the rules-help"
	@echo "target for additional information."
	@echo

ifdef DOXYGEN_SETTINGS

DOXYGEN_INPUT ?=

doc:: doxygen ;

GEN_DOXY := $(abDIR_contrib-plugin.doxygen)/gen_doxyfile

doxygen: $(GEN_DOXY)
	@$(PRINT) Generating doxygen file
	$(GEN_DOXY) --tags "$(DOXYGEN_TAGFILES)" \
		--input "$(DOXYGEN_INPUT) $(SRCDIR)" \
		$(DOXYGEN_DATAFILES) $(SRCDIR)/$(DOXYGEN_SETTINGS)
	@$(PRINT) Running doxygen
	doxygen abuild_doxyfile

endif # DOXYGEN_SETTINGS
