# $OpenBSD: Makefile,v 1.11 2015/03/16 18:07:47 naddy Exp $

COMMENT=	ILM base libraries

DISTNAME=	ilmbase-1.0.1
REVISION =	5
CATEGORIES=	graphics

SHARED_LIBS +=	Half                 4.0      # .6.0
SHARED_LIBS +=	Iex                  4.0      # .6.0
SHARED_LIBS +=	Imath                4.0      # .6.0
SHARED_LIBS +=	IlmThread            4.0      # .6.0

HOMEPAGE=	http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=openexr/}

WANTLIB=	m
WANTLIB +=	c++ c++abi pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-lc++ -lc++abi -lpthread -lm"

USE_GMAKE=	Yes

.include <bsd.port.mk>
