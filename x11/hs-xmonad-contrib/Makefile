# $OpenBSD: Makefile,v 1.31 2016/01/20 16:26:20 kili Exp $

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.11.4
REVISION =		1
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage register haddock

MODGHC_PACKAGE_KEY =	FFHmk283BMS0kJJgjKCaEH

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-extensible-exceptions \
			devel/hs-mtl>=1,<3 \
			devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-random \
			devel/hs-utf8-string \
			shells/bash \
			x11/hs-X11>=1.6.1,<1.7 \
			x11/hs-X11-xft>=0.2 \
			x11/xmonad,-lib>=0.11,<0.12

NO_TEST =		Yes

.include <bsd.port.mk>
