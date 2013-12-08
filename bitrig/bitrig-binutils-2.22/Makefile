# $OpenBSD: Makefile,v 1.18 2012/03/07 20:39:37 kurt Exp $

COMMENT=	GNU binutils
DPB_PROPERTIES= parallel

VER = 2.22
REVISION = 2
.if "${FLAVOR}" != ""
FLAVOR_VERSION=-${FLAVOR}
PKGNAME =  bitrig-binutils${FLAVOR_VERSION}-${VER}
.else
FLAVOR_VERSION=""
PKGNAME =  bitrig-binutils-${VER}
PREFIX = 	/usr
#LOCALBASE=	/usr
.endif

EXTRACT_SUFX=	.tar.bz2

REALDISTNAME = 	binutils-${VER}
DISTNAME =	${REALDISTNAME}
#DISTNAME =	bitrig-${REALDISTNAME}
DISTFILES =	${REALDISTNAME}.tar.bz2
EXTRACT_ONLY =	${REALDISTNAME}.tar.bz2

CATEGORIES=	bitrig 
CC=gcc

#GPLv3
PERMIT_PACKAGE_CDROM=Yes
WANTLIB=	c

FLAVORS= armcross i386cross amd64cross

AMD64=0
I386=0
ARM=0
COMMON=0
.if "${FLAVOR}" == "armcross"
TARGET_ARCH=arm
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}
ARM=1
.elif "${FLAVOR}" == "i386cross"
TARGET_ARCH=i386
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}
I386=1
.elif "${FLAVOR}" == "amd64cross"
TARGET_ARCH=x86_64
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}
AMD64=1
.elif ${MACHINE_ARCH} == "amd64"
AMD64=1
COMMON=1
.elif ${MACHINE_ARCH} == "i386"
I386=1
COMMON=1
.elif ${MACHINE_ARCH} == "arm"
ARM=1
COMMON=1
.endif

.if ${COMMON} == 1
PKG_ARGS+=-Dcommon=1
.else
PKG_ARGS+=-Dcommon=0
.endif

.if ${AMD64} == 1
PKG_ARGS+=-Damd64=1
.else
PKG_ARGS+=-Damd64=0
.endif

.if ${I386} == 1
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

.if ${ARM} == 1
PKG_ARGS+=-Darm=1
.else
PKG_ARGS+=-Darm=0
.endif

CONFIGURE_ARGS+=--enable-commonbfdlib=no

MASTER_SITES =	${MASTER_SITE_GNU:=binutils/}

HOMEPAGE =	http://www.gnu.org/software/binutils

USE_LIBTOOL=	Yes
USE_GROFF=	Yes
LIBTOOL_FLAGS=  --tag=disable-shared

CONFIGURE_STYLE=	GNU

post-extract:
	@cp ${FILESDIR}/te-obsd.h ${WRKSRC}/gas/config/te-obsd.h
	@cp ${FILESDIR}/armelf_obsd.sh ${WRKSRC}/ld/emulparams/
	@cp ${FILESDIR}/elf_obsd.sh ${WRKSRC}/ld/emulparams/

.include <bsd.port.mk>
