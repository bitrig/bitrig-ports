COMMENT=	System Compiler Meta Package

PKGNAME=	bitrig-syscomp-1.3

.if ${MACHINE_ARCH} == "arm"
BUILD_DEPENDS=	bitrig/bitrig-binutils-2.24 \
		devel/gdb \
		devel/git \
		sysutils/cdrtools \
		archivers/libarchive
.else
BUILD_DEPENDS=	bitrig/bitrig-binutils \
		devel/gdb \
		devel/git \
		sysutils/cdrtools \
		archivers/libarchive
.endif

RUN_DEPENDS = ${BUILD_DEPENDS}

.include <bsd.port.mk>
