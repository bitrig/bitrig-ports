# $OpenBSD: Makefile,v 1.2 2015/05/22 11:31:12 ajacoutot Exp $

COMMENT =		unit testing framework

DISTNAME =		cpptest-1.1.2

SHARED_LIBS +=  cpptest                   0.0 # 0.7

CATEGORIES =		devel
REVISION=		2

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
