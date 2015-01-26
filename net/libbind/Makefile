# $OpenBSD: Makefile,v 1.18 2015/01/26 22:42:04 sthen Exp $

COMMENT=	BIND stub resolver library

V=		6.0
DISTNAME=	libbind-6.0
EPOCH=		0
REVISION=	3

SHARED_LIBS +=	bind                      5.0 # 6.1

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/libbind

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_ISC:=libbind/$V/}

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-libtool \
			--libdir=${TRUEPREFIX}/lib/libbind

NO_TEST=	Yes

post-install:
	rm -f ${PREFIX}/man/cat?/*

.include <bsd.port.mk>
