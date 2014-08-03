SUBDIR =
.if ${MACHINE_ARCH} == "arm"
SUBDIR += bitrig-binutils-2.24
.else
SUBDIR += bitrig-binutils
.endif
SUBDIR += bitrig-gcc
SUBDIR += bitrig-llvm
SUBDIR += bitrig-gdb

.include <bsd.port.subdir.mk>
