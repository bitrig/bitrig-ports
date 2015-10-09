# $OpenBSD: Makefile,v 1.4 2015/09/20 18:37:50 jasper Exp $

COMMENT =		window switcher, run dialog and dmenu replacement

GH_PROJECT =		rofi
GH_TAGNAME =		0.15.8
GH_ACCOUNT =		DaveDavenPort
DISTNAME =		${GH_PROJECT}-${GH_TAGNAME}
REVISION =		0

CATEGORIES =		sysutils x11
HOMEPAGE =		https://davedavenport.github.io/rofi/

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext

WANTLIB += X11 Xft Xinerama c fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangoft2-1.0 pangoxft-1.0 pthread
WANTLIB += z

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12
BUILD_DEPENDS+=		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include

BUILD_DEPENDS +=	x11/i3
LIB_DEPENDS =		devel/pango

TEST_TARGET =		test

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -i

.include <bsd.port.mk>