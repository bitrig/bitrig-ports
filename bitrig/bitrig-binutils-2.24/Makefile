# $OpenBSD: Makefile,v 1.18 2012/03/07 20:39:37 kurt Exp $

COMMENT=	GNU binutils
DPB_PROPERTIES= parallel

VER = 2.24
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
REVISION =	6
DISTFILES =	${REALDISTNAME}.tar.bz2
EXTRACT_ONLY =	${REALDISTNAME}.tar.bz2

CATEGORIES=	bitrig

#GPLv3
PERMIT_PACKAGE_CDROM=Yes
WANTLIB=	c

BUILD_DEPENDS+=	devel/gettext

FLAVORS= aarch64cross armcross amd64cross

AARCH64=0
AMD64=0
ARM=0
COMMON=0
.if "${FLAVOR}" == "aarch64cross"
TARGET_ARCH=aarch64
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}
AARCH64=1
.elif "${FLAVOR}" == "amd64cross"
TARGET_ARCH=x86_64
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}
AMD64=1
.elif "${FLAVOR}" == "armcross"
TARGET_ARCH=armv7
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}-gnueabihf
ARM=1
.elif ${MACHINE_ARCH} == "aarch64"
AARCH64=1
COMMON=1
.elif ${MACHINE_ARCH} == "amd64"
AMD64=1
COMMON=1
.elif ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--target=${MACHINE_ARCH}v7-unknown-bitrig${OSREV}-gnueabihf
CONFIGURE_ARGS+=--host=${MACHINE_ARCH}v7-unknown-bitrig${OSREV}-gnueabihf
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}v7-unknown-bitrig${OSREV}-gnueabihf
ARM=1
COMMON=1
.endif

.if ${COMMON} == 1
PKG_ARGS+=-Dcommon=1
.else
PKG_ARGS+=-Dcommon=0
.endif

.if ${AARCH64} == 1
PKG_ARGS+=-Daarch64=1
.else
PKG_ARGS+=-Daarch64=0
.endif

.if ${AMD64} == 1
PKG_ARGS+=-Damd64=1
.else
PKG_ARGS+=-Damd64=0
.endif

.if ${ARM} == 1
PKG_ARGS+=-Darm=1
.else
PKG_ARGS+=-Darm=0
.endif

CONFIGURE_ARGS+=--enable-commonbfdlib=no
CONFIGURE_ARGS+=--enable-nls=no

MASTER_SITES =	${MASTER_SITE_GNU:=binutils/}

HOMEPAGE =	http://www.gnu.org/software/binutils

USE_LIBTOOL=	Yes
USE_GROFF=	Yes
LIBTOOL_FLAGS=  --tag=disable-shared

CONFIGURE_STYLE=	GNU

SUBST_VARS +=           OSREV

post-extract:
	@cp ${FILESDIR}/te-obsd.h ${WRKSRC}/gas/config/te-obsd.h
	@cp ${FILESDIR}/aarch64bitrig.sh ${WRKSRC}/ld/emulparams/
	@cp ${FILESDIR}/armelf_obsd.sh ${WRKSRC}/ld/emulparams/
	@cp ${FILESDIR}/elf_obsd.sh ${WRKSRC}/ld/emulparams/

.include <bsd.port.mk>
