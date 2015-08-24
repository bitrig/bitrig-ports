# $OpenBSD: Makefile,v 1.11 2015/08/24 10:01:10 sthen Exp $

COMMENT=	implementation of the OpenGL Character Renderer

DISTNAME=	quesoglc-0.7.2
REVISION =	7
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quesoglc/}

SHARED_LIBS=	GLC	0.0

HOMEPAGE=	http://quesoglc.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= GL GLU X11 Xdamage Xext Xfixes Xxf86vm drm expat fontconfig
WANTLIB += X11-xcb Xau Xdmcp glapi pthread pthread-stubs xcb-dri2
WANTLIB+= freetype fribidi m xcb xcb-glx z
WANTLIB+= c++ c++abi pthread

LIB_DEPENDS=	devel/fribidi

CONFIGURE_STYLE= gnu
# Needs GLEW MX
CONFIGURE_ARGS+= --without-glew --disable-executables
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build

NO_TEST=	Yes

.include <bsd.port.mk>
