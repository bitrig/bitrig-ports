# $OpenBSD: Makefile,v 1.34 2015/05/22 11:31:13 ajacoutot Exp $

COMMENT=		send desktop notifications to a notification daemon

GNOME_VERSION=		0.7.6
GNOME_PROJECT=		libnotify
REVISION=		0

CATEGORIES=		devel

SHARED_LIBS +=  notify               4.0      # 4.0

HOMEPAGE=		http://www.galago-project.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pcre png pthread z

MODULES=		devel/gettext \
			x11/gnome

# gtk+3 is needed to build the tests
BUILD_DEPENDS=		x11/gtk+3

LIB_DEPENDS=		graphics/gdk-pixbuf2

MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/build-aux

.include <bsd.port.mk>
