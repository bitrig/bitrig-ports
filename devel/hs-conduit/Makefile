# $OpenBSD: Makefile,v 1.8 2016/01/20 16:20:44 kili Exp $

COMMENT =		streaming data processing library

DISTNAME =		conduit-1.2.6
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BJXb2StvKGSJQDrzMzs96k

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-exceptions>=0.6 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-mmorph \
			devel/hs-mtl \
			devel/hs-resourcet>=1.1,<1.2 \
			devel/hs-text>=0.11 \
			devel/hs-transformers-base>=0.4.1,<0.5 \
			devel/hs-void>=0.5.5

.include <bsd.port.mk>
