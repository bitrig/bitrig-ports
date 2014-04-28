# $OpenBSD: Makefile,v 1.1.1.1 2014/03/16 11:27:28 sthen Exp $

COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.18

SHARED_LIBS +=		atf-c++                   0.0 # 0.0
SHARED_LIBS +=		atf-c                     0.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/atf
REVISION=		0

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m
WANTLIB += c++ c++abi pthread

MASTER_SITES =		https://github.com/jmmv/atf/releases/download/${DISTNAME}/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
# Don't pickup bash
CONFIGURE_ENV =		ATF_SHELL=/bin/sh
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/admin

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/kyua-cli
TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
