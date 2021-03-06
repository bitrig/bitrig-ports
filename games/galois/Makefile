# $OpenBSD: Makefile,v 1.7 2015/09/23 09:41:18 ajacoutot Exp $

COMMENT =	free multi-dimensional Tetris-like game
DISTNAME =	galois-0.4
CATEGORIES =	games x11
REVISION =	1

HOMEPAGE =	http://www.nongnu.org/galois/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-x11-2.0
WANTLIB += gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pthread sigc-2.0 xml++-2.6 xml2 z
WANTLIB += c++ c++abi

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=galois/source/}

MODULES =	devel/gettext

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

LIB_DEPENDS =	textproc/libxml++>=2.40.0 \
		x11/gtk2mm

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

MAKE_FILE =	makefile
ALL_TARGET =	default
MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -std=c++11"

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/galois ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/galois.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/misc/galois.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/misc/galois.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
