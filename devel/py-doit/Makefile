# $OpenBSD: Makefile,v 1.8 2015/04/13 09:30:57 jasper Exp $

COMMENT =	automation tool
MODPY_EGG_VERSION =	0.27.0
DISTNAME =	doit-${MODPY_EGG_VERSION}
PKGNAME =	py-doit-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://pydoit.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =	devel/py-six

NO_TEST =	Yes

.include <bsd.port.mk>
