# $OpenBSD: Makefile,v 1.5 2015/09/29 10:52:29 sthen Exp $

MODPY_EGG_VERSION =	0.3.74
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia
REVISION =	1

HOMEPAGE =	http://np1.github.io/pafy/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes
MODPY_PI_DIR =	p/pafy

pre-configure:
	perl -pi -e "s,xprint\(xenc,print(xenc,g" ${WRKSRC}/scripts/ytdl

.include <bsd.port.mk>
