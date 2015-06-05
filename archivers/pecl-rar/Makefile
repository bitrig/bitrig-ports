# $OpenBSD: Makefile,v 1.17 2015/06/05 06:00:21 robert Exp $

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
