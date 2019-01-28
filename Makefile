# Copyright (c) 2018, 2019 Diamond Key Security, NFP
# All rights reserved.

all: libtfm pkcs11 stm32

libtfm:
	${MAKE} -C sw/thirdparty/libtfm


pkcs11:
	${MAKE} -C sw/pkcs11

stm32:
	${MAKE} -C sw/stm32

clean:
	${MAKE} -C sw/pkcs11 clean
	${MAKE} -C sw/stm32 clean
	${MAKE} -C sw/thirdparty/libtfm clean

init:
	git submodule update --init --recursive

