# $OpenBSD: Makefile,v 1.3 2014/05/15 22:00:13 sthen Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.22.3
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		http://chandlerproject.org/Projects/MeTooCrypto

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=M/M2Crypto/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/swig

.include <bsd.port.mk>
