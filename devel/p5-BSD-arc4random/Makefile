# $OpenBSD: Makefile,v 1.7 2015/03/20 22:47:40 naddy Exp $

COMMENT =		perl interface to the arc4 random number generator

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		BSD-arc4random-1.50
REVISION =		4
CATEGORIES =		devel

# MirOS Licence
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

post-extract:
	rm ${WRKSRC}/arc4random.c

.include <bsd.port.mk>
