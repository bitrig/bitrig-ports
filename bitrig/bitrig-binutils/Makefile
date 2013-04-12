SHARED_ONLY=		Yes
DPB_PROPERTIES= parallel

COMMENT =		Bitrig binutils

DISTNAME =		bitrig-binutils-0.6
EXTRACT_SUFX =		.tgz
CATEGORIES =		bitrig devel
SHARED_LIBS =		iberty 10.1 \
			readline 3.0

HOMEPAGE =		https://www.bitrig.org/
MAINTAINER =		Marco Peereboom <marco@bitrig.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		c kvm m ncurses

MASTER_SITES=	https://www.bitrig.org/pub/distfiles/

NO_TEST=	Yes

PREFIX = 	/usr
INSTDIR =	${PREFIX}
SUBST_VARS =	INSTDIR

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=-Damd64=1
.else
PKG_ARGS+=-Damd64=0
.endif

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

USE_LIBTOOL=No

pre-build:
	cd ${WRKSRC}/libiberty && ${MAKE} -f Makefile.bsd-wrapper config.status

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/man/man3 
.include <bsd.port.mk>
