# $OpenBSD: Makefile,v 1.22 2016/03/16 21:19:39 naddy Exp $

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-4.1.4

SHARED_LIBS +=  zmq                  4.1      # 5.0

CATEGORIES =		net
HOMEPAGE =		http://zeromq.org/

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread sodium
WANTLIB += c++ c++abi

MASTER_SITES =		http://download.zeromq.org/

LIB_DEPENDS =		security/libsodium

USE_GMAKE =		Yes

CFLAGS +=		-Wno-long-long

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libsodium=${LOCALBASE}

# XXX libsodium: https://github.com/jedisct1/libsodium/pull/104
CONFIGURE_ENV =		CXXFLAGS="-Wno-long-long ${CXXFLAGS}"

# test_system needs to be able to create at least 496 sockets
do-test:
	cd ${WRKSRC} && ulimit -n 1024 && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
