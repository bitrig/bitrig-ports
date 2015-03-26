# $OpenBSD: Makefile,v 1.7 2015/03/16 18:07:55 naddy Exp $

BROKEN	= 	needs work on bitrig

COMMENT =	XML and HTML processing toolkit
DISTNAME =	arabica-2010-November
PKGNAME =	arabica-2010.11
REVISION =	2
CATEGORIES =	textproc
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=arabica/}

HOMEPAGE =	http://www.jezuk.co.uk/cgi-bin/view/arabica

SHARED_LIBS +=	arabica	0.0 # 0.0

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =	devel/boost
CONFIGURE_ENV =	CPPFLAGS='-I${LOCALBASE}/include'
WANTLIB +=	c expat m
WANTLIB +=	c++ c++abi pthread

.include <bsd.port.mk>
