# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:31 naddy Exp $

COMMENT=	parallel job forking and management

DISTNAME=	Parallel-Forker-1.232
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
