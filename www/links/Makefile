# $OpenBSD: Makefile,v 1.20 2013/03/11 11:44:42 espie Exp $

COMMENT=	text browser, displays while downloading

VERSION=	1.03
REVISION=	0
DISTNAME=	links-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.jikos.cz/~mikulas/links/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c crypto ssl z

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
