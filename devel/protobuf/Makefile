# $OpenBSD: Makefile,v 1.14 2016/03/11 20:11:39 naddy Exp $

COMMENT =		c++ protocol buffers

DISTNAME =		protobuf-2.4.1
REVISION =		5

SHARED_LIBS +=		protobuf	1.0   # 7.0
SHARED_LIBS +=		protoc		1.0   # 7.0
SHARED_LIBS +=		protobuf-lite	1.0   # 7.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/google/protobuf

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread z
WANTLIB +=	c++ c++abi

MASTER_SITES =		https://protobuf.googlecode.com/files/

TEST_DEPENDS =	devel/gtest

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-zlib 

.include <bsd.port.mk>
