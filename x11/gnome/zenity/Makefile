# $OpenBSD: Makefile,v 1.72 2015/10/22 15:34:36 jasper Exp $

COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		3.18.1.1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 javascriptcoregtk-4.0
WANTLIB += notify pango-1.0 pangocairo-1.0 pthread soup-2.4 webkit2gtk-4.0

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libnotify>=0.7.2 \
			www/webkitgtk4

MODGNOME_TOOLS +=	yelp

.include <bsd.port.mk>
