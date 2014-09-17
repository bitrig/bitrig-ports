# $OpenBSD: Makefile,v 1.17 2014/09/17 05:42:46 ajacoutot Exp $

COMMENT=	GObject wrapper around exiv2

GNOME_VERSION=	0.10.2
GNOME_PROJECT=	gexiv2
PKGNAME=	lib${DISTNAME}
REVISION=	1

CATEGORIES=	graphics

SHARED_LIBS +=  gexiv2               2.0      # 2.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += exiv2 expat ffi glib-2.0 gobject-2.0 m pcre pthread
WANTLIB += z
WANTLIB += c++ c++abi

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	gobject-introspection

LIB_DEPENDS=	graphics/exiv2 \
		devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
