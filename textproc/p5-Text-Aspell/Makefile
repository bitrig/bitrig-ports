# $OpenBSD: Makefile,v 1.13 2013/10/11 23:51:17 naddy Exp $

COMMENT=	interface to the GNU aspell library
SHARED_ONLY=	Yes

MODULES=	cpan
DISTNAME=	Text-Aspell-0.09
REVISION=	5
CATEGORIES=	devel textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c aspell>=16
WANTLIB += c++ c++abi pthread

LIB_DEPENDS=	textproc/aspell/core

CONFIGURE_ARGS=	LIBS="-L${LOCALBASE}/lib -laspell -lc++ -lc++abi -lpthread" \
		INC="-I${LOCALBASE}/include"

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
