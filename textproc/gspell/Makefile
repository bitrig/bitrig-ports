# $OpenBSD: Makefile,v 1.10 2016/03/20 12:25:06 ajacoutot Exp $

COMMENT=		spell-checking library for GTK+

GNOME_PROJECT=		gspell
GNOME_VERSION=		1.0.0

CATEGORIES=		textproc

SHARED_LIBS +=  gspell-1             2.0      # 1.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 enchant epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs c++ c++abi xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		textproc/enchant \
			x11/gtk+3

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

CONFIGURE_STYLE=	gnu

# XXX report upstream
# ./configure[13269]: ${flag:5}: bad substitution
BUILD_DEPENDS +=	shells/bash
CONFIGURE_ENV +=	CONFIG_SHELL="${LOCALBASE}/bin/bash"

.include <bsd.port.mk>
