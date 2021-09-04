



CPUS=$(shell lscpu | grep "^CPU(s):" | awk "{print \$2}")
export CC=$(shell which gcc)
export CXX=$(shell which g++)
PREFIX?=$(shell dirname $(shell dirname $(shell which gcc)))
#PREFIX=${CURDIR}/target
SUDO?=sudo
all: cyclonedds.build

.PHONY:cyclonedds.build
cyclonedds.build:cyclonedds
	cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DBUILD_EXAMPLES=ON  -S ${<} -B ${@}
	make -C ${@} -j ${CPUS}
	${SUDO} make -C ${@} install
	${SUDO} mkdir -p ${PREFIX}/lib/gnat
	${SUDO} cp *.gpr ${PREFIX}/lib/gnat
	${SUDO} cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/helloworld/Makefile
	${SUDO} cp helloworld.gpr ${PREFIX}/share/CycloneDDS/examples/helloworld
	${SUDO} cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/roundtrip/Makefile
	${SUDO} cp roundtrip.gpr ${PREFIX}/share/CycloneDDS/examples/roundtrip
	${SUDO} cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/shm_throughput/Makefile
	${SUDO} cp shm_throughput.gpr ${PREFIX}/share/CycloneDDS/examples/shm_throughput
	${SUDO} cp Makefile.in ${PREFIX}/share/CycloneDDS/examples/throughput/Makefile
	${SUDO} cp throughput.gpr ${PREFIX}/share/CycloneDDS/examples/throughput

cyclonedds:
	git clone https://github.com/eclipse-cyclonedds/cyclonedds.git

test:
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/throughput
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/roundtrip
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/shm_throughput
	${MAKE} -C ${PREFIX}/share/CycloneDDS/examples/throughput
	
