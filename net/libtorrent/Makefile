# $OpenBSD: Makefile,v 1.43 2015/09/11 09:15:40 pascal Exp $

COMMENT=		BitTorrent library written in C++

BROKEN-hppa =		undefined references to __sync atomic ops
BROKEN-mips64 =		undefined references to __sync atomic ops
BROKEN-sh =		undefined references to __sync atomic ops

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME=		libtorrent-0.13.6
EPOCH=			0
SHARED_LIBS +=  	torrent 22.0	# .18.0
CATEGORIES=		net devel

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://rtorrent.net/downloads/

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
