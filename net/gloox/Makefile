# $OpenBSD: Makefile,v 1.11 2015/04/21 18:24:23 sthen Exp $

BROKEN = 	needs work on bitrig

COMMENT =	extensible C++ library for XMPP clients and components

DISTNAME =	gloox-1.0.3
REVISION =	1
SHARED_LIBS +=	gloox                1.0      # 8.0
CATEGORIES =	net devel

HOMEPAGE =	http://camaya.net/gloox/
MASTER_SITES =	http://camaya.net/download/
EXTRACT_SUFX =	.tar.bz2

# GPLv3 with OpenSSL exemption
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += crypto idn m pthread ssl z
WANTLIB +=			c++ c++abi pthread

MODULES =			devel/gettext

LIB_DEPENDS =			devel/libidn

USE_GMAKE =			Yes
SEPARATE_BUILD =		Yes
CONFIGURE_STYLE	=		gnu
CONFIGURE_ARGS =	--with-openssl --with-zlib --with-libidn=${LOCALBASE} \
			--without-gnutls
MAKE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}

.include <bsd.port.mk>
