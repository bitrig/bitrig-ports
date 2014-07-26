# $OpenBSD: Makefile,v 1.1.1.1 2013/12/24 20:41:49 bentley Exp $

COMMENT =		unit testing framework

DISTNAME =		cpptest-1.1.2

SHARED_LIBS +=  cpptest                   0.0 # 0.7

CATEGORIES =		devel
REVISION=		1

HOMEPAGE =		http://cpptest.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m
WANTLIB += c++ c++abi pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cpptest/}

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config

do-test:
	${WRKSRC}/test/mytest

.include <bsd.port.mk>
