# $OpenBSD: Makefile,v 1.18 2016/02/01 21:55:38 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-3.0.2
CATEGORIES=	archivers
REVISION=	3

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m
WANTLIB+=	c++ c++abi pthread

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
