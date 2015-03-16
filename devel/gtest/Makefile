# $OpenBSD: Makefile,v 1.8 2015/03/16 18:07:40 naddy Exp $

COMMENT =	C++ unit test framework

DISTNAME =	gtest-1.4.0
REVISION =	4

SHARED_LIBS +=	gtest		0.0   # .0.0
SHARED_LIBS +=	gtest_main	0.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://code.google.com/p/googletest/

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://googletest.googlecode.com/files/

SEPARATE_BUILD =	Yes

WANTLIB =		m
WANTLIB += 		c++ c++abi pthread

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CXXFLAGS +=		-DGTEST_HAS_TR1_TUPLE=0

MODGNU_CONFIG_GUESS_DIRS =	${WRKDIST}/build-aux

NO_TEST =	Yes

.include <bsd.port.mk>
