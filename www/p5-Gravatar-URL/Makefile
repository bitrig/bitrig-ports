# $OpenBSD: Makefile,v 1.3 2013/03/26 17:23:01 jasper Exp $

COMMENT =		make URLs for Gravatars from an email address

DISTNAME =		Gravatar-URL-1.06
REVISION =		1

CATEGORIES =		www mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MSCHWERN

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/p5-Test-Warn
RUN_DEPENDS =		net/p5-Net-DNS \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
