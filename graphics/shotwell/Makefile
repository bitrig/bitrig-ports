# $OpenBSD: Makefile,v 1.52 2016/01/08 10:28:42 ajacoutot Exp $

COMMENT =	digital photo organizer

GNOME_VERSION =	0.22.0
GNOME_PROJECT =	shotwell
REVISION =	4

CATEGORIES =	graphics

HOMEPAGE =	https://wiki.gnome.org/Apps/Shotwell

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy exif exiv2 expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port
WANTLIB += graphite2 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz javascriptcoregtk-4.0 json-glib-1.0
WANTLIB += lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs raw rest-0.7 soup-2.4
WANTLIB += sqlite3 c++ c++abi webkit2gtk-4.0 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES =	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =	devel/json-glib \
		devel/libgee \
		graphics/libgexiv2 \
		graphics/libgphoto2 \
		graphics/libraw \
		net/librest \
		www/webkitgtk4

# beware: configure is an horrible homemade shell script
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-desktop-update \
			--disable-icon-update

# From 3ae27fc3f41ceb7820f365244e6ae6a4dc65fcaa Mon Sep 17 00:00:00 2001
# Subject: Port to webkit2gtk-4.0
post-extract:
	rm ${WRKSRC}/vapi/webkitgtk-3.0.deps \
		${WRKSRC}/vapi/webkitgtk-3.0.vapi

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/Makefile.plugin.mk

.include <bsd.port.mk>
