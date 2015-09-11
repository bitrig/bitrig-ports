# $OpenBSD: Makefile,v 1.50 2015/09/11 09:16:03 pascal Exp $

COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.9.6
EPOCH=			0
CATEGORIES=		net

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto curl>=14 idn m ncursesw \
			pthread ssl torrent>=20 z
WANTLIB +=		c++ c++abi

MASTER_SITES=		http://rtorrent.net/downloads/

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/cppunit
LIB_DEPENDS=		net/libtorrent>=0.13.4 \
			net/curl

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	LDFLAGS=-pthread
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-debug

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc

.include <bsd.port.mk>
