SUBDIR =
.if ${MACHINE_ARCH} == "arm"
SUBDIR += bitrig-binutils-2.24
.else
SUBDIR += bitrig-binutils
SUBDIR += bitrig-binutils-2.24
SUBDIR += bitrig-binutils-2.24,armcross
.endif

.include <bsd.port.subdir.mk>
