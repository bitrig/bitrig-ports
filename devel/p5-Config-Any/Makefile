# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:14 espie Exp $

COMMENT=	load various configuration file formats

MODULES=	cpan
DISTNAME=	Config-Any-0.23
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

# All of these would be needed to parse all these configuration
# formats.
TEST_DEPENDS=devel/p5-Config-Tiny \
		converters/p5-JSON \
		devel/p5-YAML \
		devel/p5-Config-General

.include <bsd.port.mk>
