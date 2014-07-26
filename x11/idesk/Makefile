# $OpenBSD: Makefile,v 1.13 2013/03/11 11:46:13 espie Exp $

COMMENT=		put clickable icons on the desktop

DISTNAME=		idesk-0.7.5
REVISION=		4
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=idesk/}

HOMEPAGE=		http://idesk.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=		ICE c X11 Xrender Xau Xdmcp expat z m Imlib2 \
			SM Xft freetype fontconfig Xext pthread-stubs xcb
WANTLIB+=		c++ c++abi pthread

LIB_DEPENDS=		graphics/imlib2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
