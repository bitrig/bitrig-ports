# $OpenBSD: Makefile,v 1.10 2015/12/29 19:49:41 jasper Exp $

COMMENT =	modal webkit-based browser inspired by vim
CATEGORIES =	www x11

HOMEPAGE =	http://fanglingsu.github.io/vimb/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread soup-2.4 z

GH_ACCOUNT =	fanglingsu
GH_PROJECT =	vimb
GH_TAGNAME =	2.10

FLAVORS =	gtk3
FLAVOR ?=

MODULES =	devel/gettext

.if ${FLAVOR} == "gtk3"
WANTLIB += cairo-gobject gdk-3 gtk-3 javascriptcoregtk-3.0
WANTLIB += webkitgtk-3.0

LIB_DEPENDS =	www/webkit,gtk3

MAKE_FLAGS =	GTK=3
.else
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender gdk-x11-2.0 gtk-x11-2.0 javascriptcoregtk-1.0
WANTLIB += webkitgtk-1.0

LIB_DEPENDS =	www/webkit
.endif

USE_GMAKE =	Yes

FAKE_FLAGS =	DESTDIR="${WRKINST}" PREFIX="${TRUEPREFIX}"

.include <bsd.port.mk>
