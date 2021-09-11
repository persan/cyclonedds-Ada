export LD_LIBRARY_PATH=${CURTDIR}/lib

compile:
	gprbuild

gps:
	gps&
,PHONY:test
test:compile
	make -C test
