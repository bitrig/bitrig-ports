# $OpenBSD: Makefile,v 1.2 2015/04/11 07:54:27 pascal Exp $

COMMENT =		interface to Twitter API

DISTNAME =		Net-Twitter-Lite-0.12006

CATEGORIES =		net devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Test-Fatal \
			net/p5-Net-OAuth \
			security/p5-Crypt-SSLeay \
			www/p5-libwww \
			converters/p5-JSON \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
