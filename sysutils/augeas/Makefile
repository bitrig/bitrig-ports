# $OpenBSD: Makefile,v 1.32 2016/03/11 20:28:31 naddy Exp $

COMMENT=		configuration editing tool and API

DISTNAME=		augeas-1.4.0
CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    0.0 # 16.0
SHARED_LIBS +=  fa                        0.0 # 5.0

HOMEPAGE=		http://augeas.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c lzma m ncurses pthread readline xml2 z

MASTER_SITES=		http://download.augeas.net/

MODULES=		converters/libiconv

LIB_DEPENDS=		textproc/libxml \
			devel/readline


USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-compile-warnings=yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/augparse.1

.include <bsd.port.mk>
