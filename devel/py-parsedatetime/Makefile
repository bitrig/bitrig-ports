# $OpenBSD: Makefile,v 1.4 2016/03/04 14:22:33 sthen Exp $

COMMENT=		parse human-readable date/time text

MODPY_EGG_VERSION =	2.1
DISTNAME=		parsedatetime-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		textproc/py-ICU${MODPY_FLAVOR}

.include <bsd.port.mk>
