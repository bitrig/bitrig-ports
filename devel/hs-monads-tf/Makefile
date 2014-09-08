# $OpenBSD: Makefile,v 1.8 2014/09/08 17:04:51 jasper Exp $

COMMENT=		Monad classes, using type families

DISTNAME=		monads-tf-0.1.0.1
REVISION=		0
CATEGORIES=		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-transformers>=0.2.0.0,<0.4
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
