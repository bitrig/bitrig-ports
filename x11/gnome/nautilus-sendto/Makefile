# $OpenBSD: Makefile,v 1.60 2016/03/22 12:29:19 ajacoutot Exp $

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	3.8.3

CATEGORIES=	mail

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre
WANTLIB += pthread z

MODULES=	devel/gettext \
		x11/gnome

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux

MODGNOME_TOOLS=	gobject-introspection
LIB_DEPENDS=	devel/glib2

FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>
