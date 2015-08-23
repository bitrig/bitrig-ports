# $OpenBSD: Makefile,v 1.9 2015/08/23 00:29:43 bcallah Exp $

COMMENT =	automation tool
MODPY_EGG_VERSION =	0.29.0
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

RUN_DEPENDS =	devel/py-cloudpickle \
		devel/py-configparser \
		devel/py-six

NO_TEST =	Yes

.include <bsd.port.mk>
