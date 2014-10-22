# $OpenBSD: Makefile,v 1.8 2014/10/22 13:39:38 jasper Exp $

COMMENT =		software able to hide data in various kind of files

DISTNAME =		steghide-0.5.1
REVISION =		2
CATEGORIES =		security
HOMEPAGE =		http://steghide.sf.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=steghide/}

LIB_DEPENDS =		security/libmcrypt \
			security/mhash \
			graphics/jpeg
WANTLIB =		c jpeg m mhash mcrypt z
WANTLIB +=		c++ c++abi pthread
MODULES =		devel/gettext
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"


.include <bsd.port.mk>
