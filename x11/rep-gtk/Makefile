# $OpenBSD: Makefile,v 1.60 2016/03/18 21:38:26 naddy Exp $

COMMENT=	GTK+ binding for librep Lisp environment

VERSION=	0.90.8.1
DISTNAME=	rep-gtk-${VERSION}
REVISION=	1
CATEGORIES=     x11

HOMEPAGE=       http://rep-gtk.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs pthread xcb
WANTLIB += xcb-render xcb-shm z
WANTLIB += c++ c++abi pthread

MASTER_SITES=		http://download.tuxfamily.org/librep/rep-gtk/
EXTRACT_SUFX=		.tar.xz

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/librep>=0.92.2
LIB_DEPENDS= 		x11/gtk+2

MODULES=		devel/gettext

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
