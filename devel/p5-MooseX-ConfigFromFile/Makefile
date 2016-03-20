# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:28 naddy Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-ConfigFromFile-0.02
REVISION=		1
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Class-Load \
			devel/p5-Module-Runtime

.include <bsd.port.mk>
