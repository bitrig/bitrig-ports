# $OpenBSD: Makefile,v 1.9 2013/06/25 07:28:54 dcoppa Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.9
REVISION =		0
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
