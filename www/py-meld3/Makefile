# $OpenBSD: Makefile,v 1.13 2015/09/29 10:52:55 sthen Exp $

COMMENT =		html/xml templating engine

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		meld3-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		www textproc

HOMEPAGE =		https://github.com/supervisor/meld3

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}meld3
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCS}

.include <bsd.port.mk>
