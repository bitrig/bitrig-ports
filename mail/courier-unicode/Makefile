# $OpenBSD: Makefile,v 1.3 2016/03/18 21:35:03 giovanni Exp $

SHARED_LIBS +=  courier-unicode		0.0 # 2.0

COMMENT =		courier unicode library

DISTNAME =		courier-unicode-1.4

CATEGORIES =		mail devel

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://www.courier-mta.org/imap/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		m
WANTLIB +=		c++ c++abi
MODULES =		converters/libiconv

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
