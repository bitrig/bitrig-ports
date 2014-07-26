# $OpenBSD: Makefile,v 1.6 2014/06/14 23:24:54 sthen Exp $

COMMENT =		perl interface to the arc4 random number generator

SHARED_ONLY =		Yes
MODULES =		cpan
DISTNAME =		BSD-arc4random-1.50
REVISION =		3
CATEGORIES =		devel

# MirOS Licence
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

post-extract:
	rm ${WRKSRC}/arc4random.c

.include <bsd.port.mk>
