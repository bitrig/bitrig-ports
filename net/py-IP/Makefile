# $OpenBSD: Makefile,v 1.31 2015/12/14 19:38:12 jca Exp $

COMMENT =	Python module to handle IPv4 and IPv6 address

MODPY_EGG_VERSION =	0.83
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-IP-${MODPY_EGG_VERSION}
CATEGORIES =		net
REVISION =		1

HOMEPAGE =		https://github.com/haypo/python-ipy/wiki

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_DISTUTILS_INSTALLARGS =	-O2

WRKDIST =		${WRKDIR}/${DISTNAME}

do-test:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
