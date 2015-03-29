# $OpenBSD: Makefile,v 1.39 2015/03/16 18:07:53 naddy Exp $

COMMENT=		BitTorrent library written in C++

DISTNAME=		libtorrent-0.13.4
REVISION=		2
EPOCH=			0
SHARED_LIBS +=  	torrent 20.0	# .14.1
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

WANTLIB=		crypto m sigc-2.0 z
WANTLIB +=		c++ c++abi pthread
BUILD_DEPENDS=		devel/cppunit \
			devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION}
LIB_DEPENDS=		devel/libsigc++-2

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-kqueue \
			--without-epoll \
			--disable-debug
CONFIGURE_ENV=		OPENSSL_CFLAGS=-I/usr/include \
			OPENSSL_LIBS=-lcrypto

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf

.include <bsd.port.mk>
