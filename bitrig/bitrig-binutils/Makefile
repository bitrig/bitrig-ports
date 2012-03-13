#

SHARED_ONLY=		Yes

COMMENT =		Bitrig binutils

DISTNAME =		bitrig-binutils-0.0
EXTRACT_SUFX =		.tgz
CATEGORIES =		bitrig devel
SHARED_LIBS =		iberty 10.1 \
			readline 3.0
REVISION =		2

HOMEPAGE =		http://www.bitrig.org/
MAINTAINER =		Marco Peereboom <marco@bitrig.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =		c kvm m ncurses

MASTER_SITES=	http://www.bitrig.org/files/

NO_REGRESS=	Yes

PREFIX = 	/usr
INSTDIR =	${PREFIX}
SUBST_VARS =	INSTDIR

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
