# $OpenBSD: Makefile,v 1.42 2016/03/19 12:42:50 ajacoutot Exp $

COMMENT=		integrated LaTeX environment for GNOME

GNOME_PROJECT=		latexila
GNOME_VERSION=		3.18.2
REVISION=		2

CATEGORIES=		editors print

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gspell-1
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z
WANTLIB += c++ c++abi

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			textproc/latexmk \
			devel/xdg-utils # xdg-open(1)

LIB_DEPENDS=		devel/libgee \
			textproc/gspell \
			x11/gtksourceview3

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
