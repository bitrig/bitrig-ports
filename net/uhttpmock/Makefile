# $OpenBSD: Makefile,v 1.5 2015/07/14 23:51:48 jasper Exp $

COMMENT =		HTTP web service mocking library

DISTNAME =		uhttpmock-0.5.0
SHARED_LIBS +=	uhttpmock-0.0        0.1      # 2.0

CATEGORIES =		net devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://tecnocode.co.uk/downloads/uhttpmock/
EXTRACT_SUFX =		.tar.xz

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 lzma m
WANTLIB += pcre pthread soup-2.4 sqlite3 xml2 z

MODULES =		devel/gettext \
			x11/gnome

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

MODGNOME_TOOLS =	gobject-introspection vala

LIB_DEPENDS =		devel/libsoup

PORTHOME =		${WRKDIST}

.include <bsd.port.mk>
