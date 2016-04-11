# $OpenBSD: Makefile,v 1.10 2016/03/11 19:59:12 naddy Exp $

COMMENT =	C++ unit test framework

DISTNAME =	gtest-1.4.0
REVISION =	5

SHARED_LIBS +=	gtest		0.0   # .0.0
SHARED_LIBS +=	gtest_main	0.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/googletest

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://googletest.googlecode.com/files/

SEPARATE_BUILD =	Yes

WANTLIB =		m
WANTLIB += 		c++ c++abi pthread

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

MODGNU_CONFIG_GUESS_DIRS =	${WRKDIST}/build-aux

NO_TEST =	Yes

.include <bsd.port.mk>
