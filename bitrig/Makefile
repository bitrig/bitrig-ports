SUBDIR =
.if ${MACHINE_ARCH} == "arm"
SUBDIR += bitrig-binutils-2.26
.else
SUBDIR += bitrig-binutils
# Don't build 2.26 now, it has no W^X and might be installed instead
#SUBDIR += bitrig-binutils-2.26
SUBDIR += bitrig-binutils-2.26,armcross
.endif

.include <bsd.port.subdir.mk>
