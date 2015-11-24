# $OpenBSD: Makefile,v 1.3 2015/11/24 09:11:03 jasper Exp $

BROKEN = 	needs work on bitrig

COMMENT =	tool for programming Wouxun transcievers

DISTNAME =	owx-20110917

CATEGORIES =	comms

REVISION =	1

HOMEPAGE =	http://owx.chmurka.net/

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	c m 
WANTLIB +=	c++ c++abi pthread

MASTER_SITES =	https://distfiles.nl/

USE_GMAKE =	Yes
NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/owx
	${INSTALL_DATA} ${WRKSRC}/docs/README \
		${PREFIX}/share/doc/owx

.include <bsd.port.mk>
