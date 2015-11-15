# $OpenBSD: Makefile,v 1.2 2015/11/15 11:55:59 jca Exp $

BROKEN= 	needs work on bitrig

COMMENT=	toolset for internet routing registries

V=		5.0.1
REVISION=	0
DISTNAME=	irrtoolset-$V

CATEGORIES=	net

HOMEPAGE=	http://irrtoolset.isc.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m readline termcap
WANTLIB += c++ c++abi

MASTER_SITES=	http://ftp.isc.org/isc/IRRToolSet/IRRToolSet-$V/ \
		ftp://ftp.isc.org/isc/IRRToolSet/IRRToolSet-$V/

BUILD_DEPENDS=	devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
