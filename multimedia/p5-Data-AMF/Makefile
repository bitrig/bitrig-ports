# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:50 naddy Exp $

COMMENT =	serialize/deserialize Adobe Action Message Format data

DISTNAME =	Data-AMF-0.09
REVISION =	0
CPAN_AUTHOR =	TYPESTER
CATEGORIES =	multimedia

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Any-Moose \
		devel/p5-DateTime \
		devel/p5-Universal-require \
		textproc/p5-XML-LibXML
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS = devel/p5-YAML

.include <bsd.port.mk>
