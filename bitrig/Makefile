SUBDIR =
.if ${MACHINE_ARCH} == "arm"
SUBDIR += bitrig-binutils-2.24
.else
SUBDIR += bitrig-binutils
# Don't build 2.24 now, it has no W^X and might be installed instead
#SUBDIR += bitrig-binutils-2.24
SUBDIR += bitrig-binutils-2.24,armcross
.endif

.include <bsd.port.subdir.mk>
