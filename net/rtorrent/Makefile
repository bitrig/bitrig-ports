# $OpenBSD: Makefile,v 1.45 2014/07/23 00:44:55 jca Exp $

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-mips64 =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

COMMENT=		ncurses BitTorrent client based on libTorrent

DISTNAME=		rtorrent-0.9.4
EPOCH=			0
CATEGORIES=		net

HOMEPAGE=		http://libtorrent.rakshasa.no/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto curl>=14 idn m ncursesw \
			pthread sigc-2.0 ssl \
			torrent>=20 z
WANTLIB +=		c++ c++abi

MASTER_SITES=		${HOMEPAGE}downloads/

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/cppunit \
			devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION}
LIB_DEPENDS=		net/libtorrent>=0.12.9 \
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
