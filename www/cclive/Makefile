# $OpenBSD: Makefile,v 1.12 2015/10/30 12:59:17 sthen Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

BROKEN = 		needs work on bitrig

COMMENT =		media download tool

DISTNAME =		cclive-0.9.3
EXTRACT_SUFX =		.tar.xz
REVISION = 		1

CATEGORIES =		www

HOMEPAGE =		http://cclive.sourceforge.net

# AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_system-mt bz2 c crypto
WANTLIB += curl ffi gcrypt glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error idn lua5.1 m nghttp2 pcre pcrecpp proxy pthread quvi-0.9
WANTLIB += sigc-2.0 ssl c++ c++abi z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cclive/}

MODULES =		devel/gettext
# XXX should use lua module

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

USE_GROFF =		Yes

LIB_DEPENDS =		devel/boost \
			devel/glib2mm \
			devel/pcre \
			net/quvi/libquvi>=0.9.3

RUN_DEPENDS =		net/luasocket

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
