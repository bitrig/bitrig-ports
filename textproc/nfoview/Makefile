# $OpenBSD: Makefile,v 1.13 2015/11/01 13:58:41 benoit Exp $

COMMENT =	simple viewer for NFO files
MODPY_EGG_VERSION =	1.17
DISTNAME =	nfoview-${MODPY_EGG_VERSION}
CATEGORIES =	textproc x11

GH_ACCOUNT =	otsaloma
GH_PROJECT =	nfoview
GH_TAGNAME =	${MODPY_EGG_VERSION}

HOMEPAGE =	http://otsaloma.github.io/nfoview/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext \
		lang/python \
		textproc/intltool
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		fonts/terminus-font \
		x11/gtk+3,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR}

post-patch:
	sed -i "s,share/man,man,g" ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC}/nfoview && ${LOCALBASE}/bin/py.test-3 unittest.py
	cd ${WRKSRC}/nfoview/test && ${LOCALBASE}/bin/py.test-3 test_*

.include <bsd.port.mk>
