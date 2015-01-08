# $OpenBSD: Makefile,v 1.4 2014/08/20 12:20:26 armani Exp $

COMMENT =		accurate Nintendo Entertainment System emulator

DISTNAME =		nestopia-1.45

CATEGORIES =		emulators

REVISION =		2
HOMEPAGE =		http://0ldsk00l.ca/nestopia/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += GL SDL X11 c gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 m pthread z archive
WANTLIB += c++ c++abi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nestopiaue/}
EXTRACT_SUFX =		.tgz

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		archivers/libarchive \
			devel/sdl \
			x11/gtk+3

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS} `sdl-config --cflags` \
				`pkg-config --cflags gtk+-3.0`" \
			CXXFLAGS="${CFLAGS} `sdl-config --cflags` \
				`pkg-config --cflags gtk+-3.0`"
FAKE_FLAGS =		PREFIX="${WRKINST}/${TRUEPREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
