# $OpenBSD: Makefile,v 1.45 2016/03/07 14:54:16 zhuk Exp $

COMMENT =	standalone YouTube.com video browser/player

DISTNAME =	minitube-2.5.2

CATEGORIES =	www multimedia

HOMEPAGE =	http://flavio.tordini.org/minitube

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://distfiles.bsdfrog.org/

MODULES =	x11/qt4

CONFIGURE_STYLE =	qmake

WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB +=	freetype lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB +=	lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtXml m
WANTLIB +=	phonon pthread
WANTLIB +=	c++ c++abi

RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXX=${CXX} \
		LINK=${CXX}

NO_TEST =	Yes

.include <bsd.port.mk>
