# $OpenBSD: Makefile,v 1.10 2015/11/05 19:08:58 jca Exp $

BROKEN=		needs work on bitrig

COMMENT=	cute and addictive action-puzzle game

DISTNAME= 	amoebax-0.2.1
REVISION=       0

CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2
REVISION=	2

HOMEPAGE=	http://www.emma-soft.com/games/amoebax/

MASTER_SITES=	${HOMEPAGE}download/

# GPL/LAL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL c m pthread SDL_image SDL_mixer
WANTLIB+=	c++ c++abi

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amoebax
	${INSTALL_DATA} ${WRKSRC}/doc/manual.pdf ${PREFIX}/share/doc/amoebax

.include <bsd.port.mk>
