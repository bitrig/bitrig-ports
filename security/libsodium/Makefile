# $OpenBSD: Makefile,v 1.15 2015/12/27 21:59:51 sthen Exp $

COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-1.0.8

SHARED_LIBS +=	sodium         7.0            # .18.0

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://download.libsodium.org/libsodium/releases/

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
