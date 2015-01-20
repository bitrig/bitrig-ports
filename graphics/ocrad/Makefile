# $OpenBSD: Makefile,v 1.8 2013/10/11 23:49:49 naddy Exp $

BROKEN=		needs work on bitrig

COMMENT=	OCR program for pnm files

DISTNAME=	ocrad-0.18
REVISION=	1
CATEGORIES=	graphics

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m
WANTLIB +=	c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_GNU:=ocrad/}

CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

post-install:
	${INSTALL_MAN} ${WRKBUILD}/doc/ocrad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocrad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ocrad

.include <bsd.port.mk>
