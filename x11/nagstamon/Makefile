# $OpenBSD: Makefile,v 1.16 2015/05/26 19:19:57 rpe Exp $

COMMENT=		nagios status monitor for the Desktop

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		Nagstamon-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:L}
WRKDIST=		${WRKDIR}/Nagstamon
REVISION=	0

CATEGORIES=		x11 net

HOMEPAGE=		http://nagstamon.ifw-dresden.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nagstamon/}

PKG_ARCH=		*

MODULES=		lang/python

RUN_DEPENDS=		audio/sox \
			security/py-keyring \
			textproc/py-lxml \
			x11/py-gtk2

NO_TEST=		Yes

MODPY_ADJ_FILES=	nagstamon.py

post-install:
	cd ${PREFIX}/bin && mv nagstamon.py nagstamon

.include <bsd.port.mk>
