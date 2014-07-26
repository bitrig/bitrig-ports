# $OpenBSD: Makefile,v 1.6 2013/03/11 11:07:39 espie Exp $

COMMENT =		asteroid-like game

DISTNAME =		Maelstrom-3.0.6
PKGNAME = 		${DISTNAME:L}
REVISION =		2
CATEGORIES =		games x11
HOMEPAGE =		http://www.devolution.com/~slouken/Maelstrom/
MASTER_SITES =		${HOMEPAGE}/src/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE = 	gnu

WANTLIB =		SDL c m pthread SDL_net
WANTLIB +=		c++ c++abi
LIB_DEPENDS =		devel/sdl-net

pre-configure:
	@perl -pi -e 's,	Maelstrom,	maelstrom,g' ${WRKSRC}/README.network

.include <bsd.port.mk>
