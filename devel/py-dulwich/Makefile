# $OpenBSD: Makefile,v 1.13 2014/10/03 22:51:48 sthen Exp $

COMMENT =	pure Python implementation of Git file formats and protocols

MODPY_EGG_VERSION =	0.9.6
DISTNAME =		dulwich-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://samba.org/~jelmer/dulwich/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=d/dulwich/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-nose \
		devel/git,-main

WANTLIB +=	pthread ${MODPY_WANTLIB}

do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
