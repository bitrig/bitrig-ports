COMMENT=	System Compiler Meta Package

PKGNAME=	bitrig-syscomp-1.2
REVISION=	0

.if ${MACHINE_ARCH} == "arm"
BUILD_DEPENDS=	bitrig/bitrig-binutils-2.24 \
		bitrig/bitrig-gdb \
		devel/git \
		sysutils/cdrtools \
		archivers/libarchive
.else
BUILD_DEPENDS=	bitrig/bitrig-binutils \
		bitrig/bitrig-gcc,-gcclibs \
		bitrig/bitrig-gcc,-main \
		bitrig/bitrig-llvm \
		bitrig/bitrig-gdb \
		devel/git \
		sysutils/cdrtools \
		archivers/libarchive
.endif

RUN_DEPENDS = ${BUILD_DEPENDS}

.include <bsd.port.mk>
