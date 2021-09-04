

CFLAGS+=-fdump-ada-spec -C
CFLAGS+=-fada-spec-parent=CycloneDDS.Low_Level


all:gen

gen:.generate

.generate:Makefile $(wildcard sed/*.sed) src/input.c
	rm -rf  .gen src/gen
	mkdir -p .gen src/gen

	
	cd .gen; gcc -c ${CFLAGS} -C  ${CURDIR}/src/input.c
	cp .gen/cyclonedds-low_level-dds*_h.ads src/gen
	cp .gen/cyclonedds-low_level-idl*_h.ads src/gen
	cd src/gen; rm -f *-stdint_h.ads *-bits_types_h.ads *-bits_stdint_uintn_h.ads *-bits_stdint_intn_h.ads
	python bin/patch_generated

	rm src/gen/cyclonedds-low_level-dds_ddsrt_sockets_h.ads
        
	@gprbuild  -j0 -k -p -P cyclonedds-ada.gpr 2>&1 | tee .messages.txt

# evaluate the build and generate empty .sed files for failed specs.
	find sed -size 0 -name "*.sed" -delete
	@if (grep "compilation of" .messages.txt) ; then\
		echo "FAIL#";\
		touch `cat .messages.txt  | grep "compilation of" | grep "failed" | sed "s-  - -g" | cut -f 5 -d " " | \
			sed -e "s-^-sed/-"  -e "s/\.ads$$/.sed/"` sed/all.sed ;\
		rm -f .messages.txt;\
		exit 1;\
	fi
	sed -i -e "s=  -- /.*==" src/gen/*.ads
	gnatpp -P cyclonedds.gpr src/gen/*.ads

	chmod -w src/gen/*.ads
	touch $@


