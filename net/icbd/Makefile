# $OpenBSD: Makefile,v 1.8 2015/12/29 12:54:10 jasper Exp $

BROKEN = 		needs work on bitrig

COMMENT =		Internet Citizens Band Server

GH_ACCOUNT =		mbelop
GH_PROJECT =		icbd
GH_TAGNAME =		1.6
DISTNAME =		${GH_PROJECT}-${GH_TAGNAME}
REVISION =		0

CATEGORIES =		net

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c event

FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

NO_TEST =		Yes

.include <bsd.port.mk>
