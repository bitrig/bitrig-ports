# $OpenBSD: Makefile,v 1.2 2015/04/21 18:53:16 sthen Exp $

CATEGORIES =		productivity devel
COMMENT =		C library for Google calendar and contacts
DISTNAME =		libgcal-0.9.6
REVISION =		0
HOMEPAGE =		https://code.google.com/p/libgcal/
REVISION =		0

SHARED_LIBS =		gcal	0.0

# BSDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto curl idn lzma m pthread ssl xml2 z

MASTER_SITES =		https://libgcal.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/scripts

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/check
LIB_DEPENDS =		net/curl \
			textproc/libxml

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
