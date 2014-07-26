# $OpenBSD: Makefile,v 1.7 2013/11/02 14:30:56 benoit Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
DISTNAME =	Test-NoTabs-1.3
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modinst

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
