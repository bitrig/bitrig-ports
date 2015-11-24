# $OpenBSD: Makefile,v 1.11 2015/11/24 09:11:04 jasper Exp $

COMMENT=	typing tutor for dvorak keyboards

DISTNAME=	dvorak7min-1.6.1
REVISION=	1
CATEGORIES=	education

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses

MASTER_SITES=	https://distfiles.nl/

MAKE_FLAGS=	CC="${CC}" PROF="${CFLAGS}"

NO_TEST=	Yes

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} clean

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dvorak7min ${PREFIX}/bin

.include <bsd.port.mk>
