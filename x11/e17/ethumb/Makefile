# $OpenBSD: Makefile,v 1.10 2015/10/30 12:59:17 sthen Exp $

COMMENT =		EFL thumbnail generation library

DISTNAME =		ethumb-1.7.10
REVISION =		1

SHARED_LIBS +=	ethumb                    1.0 # 8.10
SHARED_LIBS +=	ethumb_client             1.0 # 8.10

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss Xtst c cares crypto curl dbus-1
WANTLIB += ecore ecore_con ecore_evas ecore_file ecore_imf ecore_imf_evas
WANTLIB += ecore_input ecore_input_evas ecore_ipc ecore_x edbus
WANTLIB += edje eet eina eio embryo emotion evas exif expat
WANTLIB += fontconfig freetype fribidi glib-2.0 graphite2
WANTLIB += harfbuzz idn jpeg m nghttp2 pcre pthread
WANTLIB += pthread-stubs ssl xcb z ${MODLUA_WANTLIB}

MODULES =		devel/gettext \
			lang/lua

LIB_DEPENDS =		graphics/libexif \
			x11/e17/ecore>=1.7.10v2 \
			x11/e17/e_dbus>=1.7.10v1 \
			x11/e17/edje>=1.7.10v2 \
			x11/e17/eet>=1.7.10v2 \
			x11/e17/emotion>=1.7.10

CONFIGURE_ARGS +=	--disable-doc

.include <bsd.port.mk>
