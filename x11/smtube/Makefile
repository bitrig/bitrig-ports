# $OpenBSD: Makefile,v 1.16 2016/03/14 15:33:53 gonzalo Exp $

COMMENT =		browse and download YouTube videos

DISTNAME =		smtube-16.3.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smtube.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtGui QtNetwork QtScript QtWebKit SM X11 Xext Xi
WANTLIB += Xinerama Xrender c fontconfig freetype m pthread
WANTLIB += c++ c++abi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smtube/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/smplayer \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smtube

MAKE_FLAGS =		QMAKE=${LOCALBASE}/bin/qmake4 \
			LRELEASE=${LOCALBASE}/bin/lrelease4

.include <bsd.port.mk>
