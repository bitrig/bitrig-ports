# $OpenBSD: Makefile,v 1.2 2016/01/20 16:22:28 kili Exp $

COMMENT =		data encoding library

DISTNAME =		sandi-0.3.5
REVISION =		0
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CjtGdvAmf2jHMsXGKSg8LF

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-conduit>=1.2,<1.3 \
			devel/hs-exceptions>=0.6,<0.9

.include <bsd.port.mk>
