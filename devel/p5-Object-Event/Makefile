# $OpenBSD: Makefile,v 1.2 2014/03/24 10:13:38 jasper Exp $

COMMENT =		event callback interface

DISTNAME =		Object-Event-1.23
REVISION =		1

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-AnyEvent \
			devel/p5-common-sense

.include <bsd.port.mk>
