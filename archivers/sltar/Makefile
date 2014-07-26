# $OpenBSD: Makefile,v 1.2 2013/11/09 09:51:50 jung Exp $

COMMENT=		simple tar implementation

DISTNAME=		sltar-0.5
REVISION=		1

CATEGORIES=		archivers

HOMEPAGE=		https://github.com/Gottox/sltar	

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://s01.de/dl/sltar/

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
