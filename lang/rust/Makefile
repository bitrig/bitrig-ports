# Rust port

ONLY_FOR_ARCHS=	amd64

V=		1.1.0
COMMENT=	The Rust Programming Language
DISTNAME=	rust-${V}
CATEGORIES=	lang devel

HOMEPAGE=	http://www.rust-lang.org/
MASTER_SITES=	https://www.bitrig.org/pub/distfiles/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

MODULES+=       lang/python
BUILD_DEPENDS+= lang/python/${MODPY_VERSION} \
		net/curl

XX=${MODPY_VERSION}

USE_LIBTOOL=	gnu

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--disable-valgrind \
		--enable-optimize \
		--enable-optimize-tests \
		--build=x86_64-unknown-bitrig \
		--host=x86_64-unknown-bitrig \
		--target=x86_64-unknown-bitrig

.include <bsd.port.mk>
