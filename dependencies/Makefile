



-include Makefile.conf

SUDO?=sudo
all: cyclonedds.build cyclonedds-cxx.build #cyclonedds-python.build

Makefile.conf:Makefile
	@echo "CPUS=$(shell cat /proc/cpuinfo  | grep processor | wc -l)">${@}
	@echo "export CC=$(shell which gcc)" >>${@}
	@echo "export CXX=$(shell which g++)">>${@}
	@echo "PREFIX?=$(shell dirname $(shell dirname $(shell which gcc)))">>${@}

.PHONY:cyclonedds.build

install:cyclonedds.install cyclonedds-cxx.install
python: cyclonedds-python.build 
cyclonedds-python.install:
	DCMAKE_INSTALL_PREFIX=${PREFIX}  pip install ${CURDIR}/${@:.install=}

.PHONY:cyclonedds-python.build
cyclonedds-python.build:
	${MAKE} ${@:.build=.install}


cyclonedds-cxx.install:
	${MAKE} -C ${@:.install=.build} install
	cp cyclonedds-cxx.gpr    ${PREFIX}/lib/gnat
	cp cyclonedds-idlcxx.gpr ${PREFIX}/lib/gnat

.PHONY:cyclonedds-cxx.build
cyclonedds-cxx.build:cyclonedds-cxx
	cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DBUILD_EXAMPLES=ON  -S ${<} -B ${@}
	make -C ${@} -j ${CPUS}
	${SUDO} ${MAKE} ${@:.build=.install}


cyclonedds.install:
	${MAKE} -C ${@:.install=.build} install
	mkdir -p ${PREFIX}/lib/gnat
	cp cyclonedds.gpr ${PREFIX}/lib/gnat
	cp cyclonedds-idl.gpr ${PREFIX}/lib/gnat
	cp cyclonedds-c.gpr ${PREFIX}/lib/gnat
	cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/helloworld/Makefile
	cp helloworld.gpr ${PREFIX}/share/CycloneDDS/examples/helloworld
	cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/roundtrip/Makefile
	cp roundtrip.gpr ${PREFIX}/share/CycloneDDS/examples/roundtrip
	cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/shm_throughput/Makefile
	cp shm_throughput.gpr ${PREFIX}/share/CycloneDDS/examples/shm_throughput
	cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/throughput/Makefile
	cp throughput.gpr ${PREFIX}/share/CycloneDDS/examples/throughput

cyclonedds.build:cyclonedds
	cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DBUILD_EXAMPLES=ON  -S ${<} -B ${@}
	make -C ${@} -j ${CPUS}
	${SUDO} ${MAKE} ${@:.build=.install}


test:
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/throughput
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/roundtrip
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/shm_throughput
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/throughput

update:
	rm -rf *.build
	git -C cyclonedds-cxx pull
	git -C cyclonedds pull
	git -C cyclonedds-python pull
