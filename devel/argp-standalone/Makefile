# $OpenBSD: Makefile,v 1.5 2016/03/11 19:59:12 naddy Exp $

COMMENT=		Standalone version of arguments parsing functions from GLIBC

DISTNAME=		argp-standalone-1.3
REVISION=		1

CATEGORIES=		devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.lysator.liu.se/~nisse/misc/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-dependency-tracking

CFLAGS=			-std=gnu89

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libargp.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/argp.h ${PREFIX}/include

.include <bsd.port.mk>
