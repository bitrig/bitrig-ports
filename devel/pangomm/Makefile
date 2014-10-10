# $OpenBSD: Makefile,v 1.25 2014/10/10 12:52:54 ajacoutot Exp $

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.34.0
REVISION =		3

CATEGORIES =		devel x11

SHARED_LIBS +=		pangomm-1.4	10.0 # .1.30

HOMEPAGE =		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xrender cairo cairomm-1.0 expat ffi fontconfig
WANTLIB += freetype glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sigc-2.0 xcb xcb-render
WANTLIB += xcb-shm z
WANTLIB += c++ c++abi

MODULES =		devel/gettext \
			x11/gnome

LIB_DEPENDS =		devel/pango \
			devel/glib2mm \
			graphics/cairomm

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build

.include <bsd.port.mk>
