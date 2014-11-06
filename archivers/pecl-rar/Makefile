# $OpenBSD: Makefile,v 1.16 2014/11/06 17:13:39 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-3.0.2
CATEGORIES=	archivers
REVISION=	2

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m
WANTLIB+=	c++ c++abi pthread

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
