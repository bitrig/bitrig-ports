# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:23 naddy Exp $

COMMENT =	database of robots.txt-derived permissions

DISTNAME =	WWW-RobotRules-6.02
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
