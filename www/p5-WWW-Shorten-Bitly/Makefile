# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:23 naddy Exp $

COMMENT=		interface to bit.ly shortening site

DISTNAME =		WWW-Shorten-Bitly-1.17
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-JSON-Any \
			textproc/p5-XML-Simple \
			www/p5-WWW-Shorten

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
