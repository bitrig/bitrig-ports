# $OpenBSD: Makefile,v 1.34 2015/10/30 14:45:13 landry Exp $

COMMENT =	Xfce4 media player

XFCE_VERSION =	0.8.1
XFCE_GOODIE =	parole
CATEGORIES +=	audio

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz m notify orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 tag tag_c xcb xcb-render
WANTLIB += xcb-shm xcb-util xfce4ui-2 xfce4util xfconf-0 z
WANTLIB += c++ c++abi

MODULES =	x11/xfce4
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/parole-0

LIB_DEPENDS =	multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		x11/xfce4/libxfce4ui \
		audio/taglib \
		devel/libnotify

# plugins-libav needed to play vids and mp3
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav

.include <bsd.port.mk>
