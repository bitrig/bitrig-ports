# $OpenBSD: Makefile,v 1.13 2014/12/08 09:15:02 kili Exp $

COMMENT =		portable sendfile functionality

DISTNAME =		sendfile-0.7.9
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-network>=2,<3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
