
CYCLONE=${CURDIR}/../target
CYCLONE_INCLUDE=${CYCLONE}/include

all:
	rm -rf src/gen;mkdir -p  src/gen
	rm -rf .gen; mkdir -p .gen
        
	cd ${CYCLONE_INCLUDE};find -name "*.h" | \
		grep -v -e /atomics/arm.h -e /atomics/msvc.h -e /atomics/sun.h -e ddsi_cfgunits.h -e shm_init.h -e shm_sync.h -e ddsi_cfgelems.h -e windows.h -e freertos.h  | sort| \
			sed -e "s-./-#include <-"  -e "s-\.h-.h>-" >${CURDIR}/.gen/gen.c
	
	cd .gen;gcc -c gen.c -I ${CYCLONE_INCLUDE} -fdump-ada-spec -fada-spec-parent=CycloneDDS.Low_Level
	cp .gen/cyclonedds*-dds_*_h.ads .gen/cyclonedds*-idl*_h.ads src/gen
	sed -i -f all.sed src/gen/*.ads
	gprbuild -p -j0 -k


