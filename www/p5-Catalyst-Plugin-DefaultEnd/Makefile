# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:44 espie Exp $

COMMENT=		sensible default end action (deprecated)

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.08
REVISION=		0
CATEGORIES=		www devel
USE_GROFF =		Yes

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
