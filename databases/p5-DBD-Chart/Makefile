# $OpenBSD: Makefile,v 1.7 2015/01/21 14:05:46 sthen Exp $

COMMENT =	DBI driver abstraction for rendering charts and graphs

DISTNAME =	DBD-Chart-0.82
REVISION =	1
CATEGORIES =	databases graphics
MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	graphics/p5-GD \
		graphics/p5-GD-TextUtil \
		databases/p5-DBI

.include <bsd.port.mk>
