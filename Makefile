# Copyright (c) 2018, 2019 Diamond Key Security, NFP
# All rights reserved.

all: pkcs11 stm32

pkcs11:
	${MAKE} -C sw/pkcs11

stm32:
	${MAKE} -C sw/stm32

clean:
	${MAKE} -C sw/pkcs11 clean
	${MAKE} -C sw/stm32 clean

init:
	git submodule update --init --recursive

