# $OpenBSD: Makefile,v 1.8 2013/04/04 16:03:55 brad Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-0.11.1
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  1.0      # 1.0

HOMEPAGE=		http://www.nih.at/libzip/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

TEST_DEPENDS=		archivers/unzip

.include <bsd.port.mk>
