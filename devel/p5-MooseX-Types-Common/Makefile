# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:30 naddy Exp $

COMMENT=		library of commonly used type constraints

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Types-Common-0.001002
REVISION=		1
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types
TEST_DEPENDS=	devel/p5-Test-Exception \
			sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
