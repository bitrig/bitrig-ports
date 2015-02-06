# $OpenBSD: Makefile,v 1.8 2015/01/22 21:17:47 naddy Exp $

COMMENT=	server for KiSS DP-500 network movie player

DISTNAME=	kissd-0.3
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/kissd.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MAKE_FLAGS=		CFLAGS="${CFLAGS} -Wno-unused-const-variable"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kissd ${PREFIX}/bin/kissd
	${INSTALL_MAN} ${WRKSRC}/kissd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
