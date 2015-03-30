# $OpenBSD: Makefile,v 1.126 2015/03/30 16:38:56 dcoppa Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

MODPY_EGG_VERSION = 2015.03.28

DISTNAME =	youtube-dl-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.io/youtube-dl/

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://yt-dl.org/downloads/${MODPY_EGG_VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
