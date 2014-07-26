# $OpenBSD: Makefile,v 1.24 2014/06/14 23:23:12 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement efficient mapping tables

DISTNAME=	Unicode-Map8-0.12
REVISION=	5
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	converters/p5-Unicode-String

.include <bsd.port.mk>
