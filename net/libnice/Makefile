# $OpenBSD: Makefile,v 1.36 2016/03/18 21:38:25 naddy Exp $

COMMENT =		GLib ICE implementation

DISTNAME =		libnice-0.1.13
REVISION =		0

SHARED_LIBS +=  nice                 2.4      # 16.0

CATEGORIES =		net

HOMEPAGE =		http://nice.freedesktop.org/

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gstbase-1.0 gstreamer-1.0 gthread-2.0 gupnp-1.0 gupnp-igd-1.0
WANTLIB += lzma m pcre pthread soup-2.4 sqlite3 xml2 z

MASTER_SITES =		http://nice.freedesktop.org/releases/

MODULES =		devel/gettext

BUILD_DEPENDS =		devel/gobject-introspection

LIB_DEPENDS =		multimedia/gstreamer1/core \
			net/gupnp/igd

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--with-gstreamer \
			--without-gstreamer-0.10

USE_GMAKE =		Yes

# configure sets -Werror
CFLAGS +=		-Wno-error

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}
# don't install example binaries
	rm ${PREFIX}/bin/*-example

.include <bsd.port.mk>
