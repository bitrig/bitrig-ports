# $OpenBSD: Makefile,v 1.1.1.2 2013/09/25 07:49:50 sthen Exp $

COMMENT=	tools and library routines for working with GIF images

DISTNAME=	giflib-5.0.5
SHARED_LIBS +=	gif                  6.0      # 6.1
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=giflib/}

HOMEPAGE=	http://giflib.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

TEST_DEPENDS=	sysutils/coreutils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/giflib
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/giflib
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
