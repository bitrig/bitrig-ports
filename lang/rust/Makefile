# Rust port

ONLY_FOR_ARCHS=	amd64

COMMENT=	The Rust Programming Language

RUST_VERSION=	0.99

DISTNAME=	rust-${RUST_VERSION}
PKGNAME=	${DISTNAME}

CATEGORIES=	lang devel

HOMEPAGE=	http://www.rust-lang.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://static.rust-lang.org/dist/

USE_GMAKE=	Yes
USE_LIBTOOL=	gnu

BUILD_DEPENDS=	net/curl

WRKDIST=	${WRKDIR}/rustc-nightly
DISTFILES=	rustc-nightly-src.tar.gz

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--disable-valgrind \
		--enable-optimize \
		--enable-optimize-tests \
		--build=x86_64-unknown-bitrig \
		--host=x86_64-unknown-bitrig \
		--target=x86_64-unknown-bitrig

.include <bsd.port.mk>
