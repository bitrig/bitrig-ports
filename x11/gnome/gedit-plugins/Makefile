# $OpenBSD: Makefile,v 1.87 2015/10/22 17:56:28 jasper Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		3.18.0

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz m pango-1.0 epoxy
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z sqlite3 zeitgeist-2.0 lzma

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/libgit2/libgit2-glib>=0.0.6p0 \
			devel/vte3 \
			x11/gnome/gedit>=3.14.0 \
			x11/gnome/gucharmap

LIB_DEPENDS=		devel/libpeas \
			productivity/zeitgeist>=0.9.14v0 \
			x11/gtksourceview3

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/libgit2/libgit2-glib>=0.0.6p0 \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/vte3 \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gnome/gedit>=3.14.0 \
			x11/gnome/gucharmap

MODGNOME_TOOLS +=	yelp
# dashboard plugin
RUN_DEPENDS +=		productivity/zeitgeist

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.{a,la}

.include <bsd.port.mk>
