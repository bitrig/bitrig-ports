# $OpenBSD: Makefile,v 1.14 2016/03/20 19:57:09 naddy Exp $

COMMENT =	comma-separated values manipulation routines

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Text-CSV-1.33
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-Text-CSV_XS

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
