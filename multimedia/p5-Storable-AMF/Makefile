# $OpenBSD: Makefile,v 1.4 2014/06/14 23:25:41 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.00
REVISION =	2
CATEGORIES =	multimedia
CPAN_AUTHOR =	GRIAN

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c

MODULES =	cpan

TEST_DEPENDS = converters/p5-JSON-XS \
		devel/p5-boolean \
		devel/p5-Test-Pod

.include <bsd.port.mk>
