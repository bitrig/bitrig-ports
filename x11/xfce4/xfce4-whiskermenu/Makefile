# $OpenBSD: Makefile,v 1.10 2016/01/16 11:34:59 landry Exp $

COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	1.5.2
XFCE_PLUGIN =	whiskermenu

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4 devel/cmake
CONFIGURE_STYLE =	cmake

MODXFCE_ICON_CACHE=	Yes

WANTLIB += cairo exo-1 garcon-1 gdk-x11-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 xfce4ui-1 xfce4util gdk_pixbuf-2.0
WANTLIB += c++ c++abi pthread

.include <bsd.port.mk>
