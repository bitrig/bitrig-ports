# $OpenBSD: Makefile,v 1.3 2015/04/02 14:21:16 jasper Exp $

COMMENT =	messagepack (de)serializer

MODPY_EGG_VERSION =	0.4.2
DISTNAME =	msgpack-python-${MODPY_EGG_VERSION}
PKGNAME =	py-msgpack-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	net textproc

HOMEPAGE =	http://msgpack.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
WANTLIB +=	${MODPY_WANTLIB} m pthread
WANTLIB +=	c++ c++abi

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-test \
		devel/py-nose \
		devel/py-six

do-test:
	@cd ${WRKSRC} && nosetests test

.include <bsd.port.mk>
