# $OpenBSD: Makefile,v 1.7 2015/10/08 21:19:22 sthen Exp $

COMMENT=		network traffic and bandwidth usage in real time

DISTNAME=		nload-0.7.4
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://www.roland-riegel.de/nload/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

WANTLIB=		c form m ncurses
WANTLIB +=		c++ c++abi pthread

.include <bsd.port.mk>
