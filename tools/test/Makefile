export LD_LIBRARY_PATH=${CURTDIR}/../lib

all:
	gprbuild -p -j0 -XGENERATE=True
	@rm -f *.stdout *.stderr
	gprbuild -p -j0 -XGENERATE=False

gps:
	gps&
