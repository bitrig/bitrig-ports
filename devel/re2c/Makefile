# $OpenBSD: Makefile,v 1.9 2015/02/18 18:06:59 naddy Exp $

COMMENT=		C-based regular expression scanner generator

DISTNAME=		re2c-0.13.6
REVISION=		0
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/
REVISION=		1

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m
WANTLIB += c++ c++abi pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=re2c/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
