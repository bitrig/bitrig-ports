# $OpenBSD: Makefile,v 1.8 2014/07/04 15:46:56 espie Exp $

COMMENT =		Python last.fm library

MODPY_EGG_VERSION =	0.5.11
DISTNAME =		pylast-${MODPY_EGG_VERSION}
PKGNAME =		py-last-${MODPY_EGG_VERSION}
CATEGORIES =		audio net
REVISION =		1

HOMEPAGE =		https://code.google.com/p/pylast/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pylast/}

FLAVORS =	python3
FLAVOR ?=

MODULES =	lang/python

NO_TEST =	Yes

.include <bsd.port.mk>
