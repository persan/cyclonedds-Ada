all: cyclonedds.build

.PHONY:cyclonedds.build
cyclonedds.build:cyclonedds
	mkdir -p ${@}
	cd ${@}; cmake ${CURDIR}/${<} -DCMAKE_INSTALL_PREFIX=${CURDIR}/target -DBUILD_EXAMPLES=ON ..
	make -C ${CURDIR}/${@} -j 16
	make -C ${CURDIR}/${@} install


cyclonedds:
	git clone https://github.com/eclipse-cyclonedds/cyclonedds.git
