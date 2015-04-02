# $OpenBSD: Makefile,v 1.29 2015/04/02 14:21:16 jasper Exp $

COMMENT =	Python module to handle IPv4 and IPv6 address

MODPY_EGG_VERSION =	0.82a
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-IP-${MODPY_EGG_VERSION}
REVISION =		0
CATEGORIES =		net

HOMEPAGE =		https://github.com/haypo/python-ipy/wiki

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_DISTUTILS_INSTALLARGS =	-O2

WRKDIST =		${WRKDIR}/python-ipy-${DISTNAME}

do-test:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
