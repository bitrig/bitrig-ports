# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:45 espie Exp $

COMMENT=	module to parse the content of tables in HTML text

MODULES=	cpan
DISTNAME=	HTML-TableContentParser-0.13
REVISION=	3
CATEGORIES=	www devel
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
