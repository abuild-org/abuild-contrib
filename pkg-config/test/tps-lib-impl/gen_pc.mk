all:: tps-lib-1.0.pc ;

tps-lib-1.0.pc: ../tps-lib-template
	sed -e s,--LDIR--,$(abspath $(ABUILD_OUTPUT_DIR)), \
	    -e s,--IDIR--,$(abspath $(SRCDIR)), < $< > $@
