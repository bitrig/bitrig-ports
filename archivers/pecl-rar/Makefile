# $OpenBSD: Makefile,v 1.15 2014/10/29 21:14:22 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-3.0.2
CATEGORIES=	archivers
REVISION=	1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m
WANTLIB+=	c++ c++abi pthread

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
