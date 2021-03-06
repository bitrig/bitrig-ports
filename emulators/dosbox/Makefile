# $OpenBSD: Makefile,v 1.31 2015/12/24 13:08:12 bentley Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	x86 with DOS emulator targeted at playing games

DISTNAME=	dosbox-0.74
REVISION=	8
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dosbox/}

HOMEPAGE=	http://www.dosbox.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL SDL SDL_net SDL_sound png X11 c m pthread sndio z
WANTLIB += c++ c++abi

LIB_DEPENDS=	devel/sdl-net \
		devel/sdl-sound \
		graphics/png

NO_TEST=	Yes

AUTOCONF_VERSION=       2.69
AUTOMAKE_VERSION=       1.12
BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
CONFIGURE_ENV+=LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ENV+=CXXFLAGS="-O0"
CONFIGURE_ARGS+=	--disable-alsatest

pre-configure:
	cp ${FILESDIR}/midi_sndio.h ${WRKSRC}/src/gui
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dosbox

.include <bsd.port.mk>
