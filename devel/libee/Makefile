# $OpenBSD: Makefile,v 1.8 2015/05/05 17:00:17 sthen Exp $

COMMENT =	event expression library
DISTNAME =	libee-0.4.1
SHARED_LIBS +=  ee                   0.1      # 0.1
CATEGORIES =	devel

REVISION =	2

HOMEPAGE =	http://www.libee.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c estr m

MASTER_SITES =		${HOMEPAGE}/files/download/

TEST_FLAGS =		CFLAGS+=-I${LOCALBASE}/include

LIB_DEPENDS =		devel/libestr

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
