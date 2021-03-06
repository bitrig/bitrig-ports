# $OpenBSD: Makefile,v 1.18 2015/08/19 18:55:04 sthen Exp $

COMMENT =	library for writing single instance GTK+3 applications

GNOME_PROJECT =	libunique
GNOME_VERSION =	3.0.2
REVISION=	5

PKGNAME=	${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS +=  unique-3.0                0.0 # 0.0
CATEGORIES =	devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += dbus-1 dbus-glib-1 expat fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z ICE SM atk-bridge-2.0 atspi epoxy ffi
WANTLIB += graphite2 harfbuzz

MODULES =		devel/gettext \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS =		x11/dbus-glib \
			x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-bacon \
			--with-x

.include <bsd.port.mk>
