# $OpenBSD: Makefile,v 1.11 2015/04/02 14:21:14 jasper Exp $

COMMENT =	simplify usage of decorators

MODPY_EGG_VERSION = 3.4.0
DISTNAME =	decorator-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	http://pypi.python.org/pypi/decorator

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

NO_TEST =	Yes

.include <bsd.port.mk>
