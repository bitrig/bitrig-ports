# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:20 espie Exp $

COMMENT=	parallel job forking and management

DISTNAME=	Parallel-Forker-1.232
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
