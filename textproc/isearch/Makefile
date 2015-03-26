# $OpenBSD: Makefile,v 1.23 2013/03/11 11:42:42 espie Exp $

BROKEN= 	needs work on bitrig

COMMENT=	text search engine by CNIDR

DISTNAME=	Isearch-1.14
PKGNAME=	${DISTNAME:L}
REVISION =	2
CATEGORIES=	textproc databases

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m
WANTLIB +=		c++ c++abi pthread

MASTER_SITES=	ftp://ftp.cnidr.org/pub/software/Isearch/

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		CC="${CXX}" CFLAGS="${CXXFLAGS} -DUNIX"
FAKE_FLAGS=		INSTALL=${WRKINST}${PREFIX}/bin

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Isearch
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch

.include <bsd.port.mk>
