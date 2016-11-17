# $OpenBSD: Makefile,v 1.40 2016/03/04 19:25:27 pascal Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-7.11
REVISION=	0

HOMEPAGE=	https://www.gnu.org/software/gdb/

FLAVORS=aarch64cross

FLAVOR?= 

# GPLv2 and GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb
EXTRACT_SUFX=	.tar.xz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB = c expat kvm m ncurses pthread ${MODPY_WANTLIB} util

#SEPARATE_BUILD = Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls \
		--disable-werror \
		--without-lzma \
	 	--enable-target=all \
		--with-python=${MODPY_BIN}

.if "${FLAVOR}" == "aarch64cross"
TARGET_ARCH=aarch64
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}
AARCH64=1
.else
AARCH64=0
.endif

.if "${FLAVOR}" == "armcross"
TARGET_ARCH=arm
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}
ARM=1
.else
ARM=0
.endif

.if ${ARM} == 1
PKG_ARGS+=-Darmcross=1
.else
PKG_ARGS+=-Darmcross=0
.endif

.if ${AARCH64} == 1
PKG_ARGS+=-Daarch64cross=1
.else
PKG_ARGS+=-Daarch64cross=0
.endif

.if ${ARM} == 0 && ${AARCH64} == 0
PKG_ARGS+=-Dnative=1
.else
PKG_ARGS+=-Dnative=0
.endif

USE_GMAKE=	Yes

MODULES +=	lang/python
LIB_DEPENDS += 	${MODPY_LIB_DEPENDS}
MODPY_BUILDDEP = No

.include <bsd.port.mk>
