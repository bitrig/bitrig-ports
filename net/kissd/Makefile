# $OpenBSD: Makefile,v 1.7 2015/01/13 11:26:10 sthen Exp $

COMMENT=	server for KiSS DP-500 network movie player

DISTNAME=	kissd-0.3
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.ch/
REVISION=	0

HOMEPAGE=	http://www.benzedrine.ch/kissd.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MAKE_FLAGS=		CFLAGS="${CFLAGS} -Wno-unused-const-variable"

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kissd ${PREFIX}/bin/kissd
	${INSTALL_MAN} ${WRKSRC}/kissd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
