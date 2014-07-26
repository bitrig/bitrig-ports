# $OpenBSD: Makefile,v 1.21 2014/05/04 09:29:29 benoit Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
DISTNAME =	HTML-TableExtract-2.11
REVISION =	0
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
