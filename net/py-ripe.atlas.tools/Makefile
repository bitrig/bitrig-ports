# $OpenBSD: Makefile,v 1.4 2016/03/14 09:35:36 florian Exp $

COMMENT =		official command-line client for RIPE Atlas

MODPY_EGG_VERSION =	1.2.3
DISTNAME =		ripe.atlas.tools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe-atlas-tools

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-tzlocal \
			net/py-ripe.atlas.cousteau \
			net/py-ripe.atlas.sagan \
			security/py-openssl \
			textproc/py-yaml \
			www/py-requests

TEST_DEPENDS =		${RUN_DEPENDS}
# runs into some problem with namespace, at least on py2.7
NO_TEST =		Yes

.include <bsd.port.mk>
