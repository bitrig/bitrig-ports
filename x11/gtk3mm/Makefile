# $OpenBSD: Makefile,v 1.32 2015/09/24 10:32:23 ajacoutot Exp $

COMMENT=		C++ interface for gtk3+

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		3.18.0
PKGNAME=		gtk3mm-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdkmm-3.0            4.2      # 2.0
SHARED_LIBS +=  gtkmm-3.0            4.2      # 2.0

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atkmm-1.6
WANTLIB += atspi cairo cairo-gobject cairomm-1.0 dbus-1 epoxy
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sigc-2.0 xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/atk2mm \
			devel/pangomm \
			x11/gtk+3>=3.18.0

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_DOT= \
			ac_cv_path_XSLTPROC= \
			ac_cv_path_DOXYGEN=
CONFIGURE_ARGS=		--enable-static

# XXX needs doxygen and graphviz (and xsltproc)
# pre-generated doc should be part of the official tarball...
CONFIGURE_ARGS +=	--disable-documentation

.include <bsd.port.mk>
