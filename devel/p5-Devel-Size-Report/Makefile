# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:20 naddy Exp $

COMMENT=		generate a size report for all elements in a structure

DISTNAME=		Devel-Size-Report-0.13
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

RUN_DEPENDS=		devel/p5-Array-RefElem \
			devel/p5-Devel-Size

.include <bsd.port.mk>
