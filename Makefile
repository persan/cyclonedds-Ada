all: cyclonedds.build

CPUS=$(shell lscpu | grep "^CPU(s):" | awk "{print \$2}")
export CC=$(shell which gcc)
export CXX=$(shell which g++)

.PHONY:cyclonedds.build
cyclonedds.build:cyclonedds
	cmake -DCMAKE_INSTALL_PREFIX=${CURDIR}/target -DBUILD_EXAMPLES=ON  -S ${<} -B ${@}
	make -C ${@} -j ${CPUS}
	make -C ${@} install


cyclonedds:
	git clone https://github.com/eclipse-cyclonedds/cyclonedds.git
