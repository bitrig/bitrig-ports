# $OpenBSD: Makefile,v 1.1.1.1 2016/01/10 15:41:42 shadchin Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	1.10.1
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python

TEST_DEPENDS =		devel/git \
			devel/mercurial \
			devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/testing/test_regressions.py

do-test:
	cd ${WRKSRC} && env PYTHONPATH=${WRKSRC} ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
