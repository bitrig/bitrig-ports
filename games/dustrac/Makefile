# $OpenBSD: Makefile,v 1.6 2015/12/24 12:52:56 bentley Exp $

BROKEN = 		needs work on bitrig

COMMENT =		traditional top-down car racing game

V =			1.11.0
DISTNAME =		dustrac-$V
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://juzzlin.github.io/DustRacing2D/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 c m openal pthread vorbisfile
WANTLIB += Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets Qt5Xml

MASTER_SITES =		https://github.com/juzzlin/DustRacing2D/releases/download/$V/

MODULES =		devel/cmake \
			gcc4 \
			x11/qt5
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/openal

CONFIGURE_ARGS +=	-DReleaseBuild=ON \
			-DDATA_PATH=${PREFIX}/share/dustrac \
			-DDOC_PATH=${PREFIX}/share/dustrac

.include <bsd.port.mk>
