# $OpenBSD: Makefile,v 1.32 2014/06/02 08:15:05 jasper Exp $

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/build/

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		1.0.2
REVISION=		0

SHARED_LIBS +=  json-glib-1.0        5.2      # 0.0

CATEGORIES=		devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pthread
WANTLIB += pcre z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS += docbook gobject-introspection

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
