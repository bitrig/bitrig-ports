# $OpenBSD: Makefile,v 1.16 2013/03/11 11:10:53 espie Exp $

BROKEN=		needs work on bitrig

COMMENT=	graphic counter language compiler/interpreter

DISTNAME=	gracula-3.0
REVISION=	0
CATEGORIES=	graphics

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.whizkidtech.redprince.net/gcl/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gracula ${PREFIX}/bin
	$(INSTALL_PROGRAM) ${WRKSRC}/sec2000 ${PREFIX}/bin

.include <bsd.port.mk>
