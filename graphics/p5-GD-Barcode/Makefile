# $OpenBSD: Makefile,v 1.11 2013/03/11 11:10:54 espie Exp $

COMMENT=	create barcode image with GD

DISTNAME=	GD-Barcode-1.15
REVISION=	2
CATEGORIES=	graphics

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	graphics/p5-GD>=1.18
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
