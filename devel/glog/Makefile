# $OpenBSD: Makefile,v 1.8 2016/03/11 20:28:24 naddy Exp $

BROKEN = 		needs work on bitrig

COMMENT =		C++ application-level logging library

DISTNAME =		glog-0.3.1
REVISION =		3

SHARED_LIBS +=		glog 0.0 # 0.2.1

CATEGORIES =		devel

HOMEPAGE =		https://google-glog.googlecode.com/

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += gflags m pthread
WANTLIB += c++ c++abi

MASTER_SITES =		${HOMEPAGE}/files/

LIB_DEPENDS =		devel/gflags
TEST_DEPENDS =	devel/gtest
BUILD_DEPENDS +=	${TEST_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-gflags=${LOCALBASE}
MAKE_FLAGS =            docdir='$$(prefix)/share/doc/glog'

.include <bsd.port.mk>
