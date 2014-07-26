# $OpenBSD: Makefile,v 1.6 2013/03/11 11:10:54 espie Exp $

COMMENT =	Perl implementation of the reCAPTCHA API

MODULES =	cpan
DISTNAME =	Captcha-reCAPTCHA-0.94
REVISION =	0
CATEGORIES =	graphics security
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	ANDYA

RUN_DEPENDS =	www/p5-HTML-Tiny \
		www/p5-libwww

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
