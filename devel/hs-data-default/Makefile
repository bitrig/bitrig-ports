# $OpenBSD: Makefile,v 1.8 2014/09/08 17:04:50 jasper Exp $

COMMENT=		class for types with a default value

DISTNAME=		data-default-0.5.1
REVISION=		0
CATEGORIES=		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-dlist

.include <bsd.port.mk>
