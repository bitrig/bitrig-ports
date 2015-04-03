# $OpenBSD: Makefile,v 1.16 2015/04/03 18:52:14 jca Exp $

COMMENT =	python powered git gui

MODPY_EGG_VERSION=	2.1.1
DISTNAME =	${GH_PROJECT}-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	git-cola
GH_PROJECT =	git-cola
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_COMMIT =	68e9509a6c863f51bc7216be87b3f7bd6596421a

CATEGORIES =	devel x11

HOMEPAGE =	http://cola.tuxfamily.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes


MODULES =	devel/gettext \
		lang/python

BUILD_DEPENDS =	devel/git \
		textproc/xxdiff \
		x11/py-qt4

RUN_DEPENDS =	devel/git \
		textproc/xxdiff \
		x11/py-qt4 \
		devel/desktop-file-utils

MODPY_ADJ_FILES=	bin/git-cola

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/cmds.py

.include <bsd.port.mk>
