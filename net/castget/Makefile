# $OpenBSD: Makefile,v 1.13 2014/10/22 13:44:45 jasper Exp $

COMMENT=		command-line podcast downloader

DISTNAME=		castget-1.0.1
REVISION=		4
SHARED_LIBS +=	castget              0.0      # .0.0
CATEGORIES=		net

HOMEPAGE=		http://www.nongnu.org/castget

MASTER_SITES=          	${MASTER_SITE_SAVANNAH:=castget/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl glib-2.0 id3 idn m pcre pthread ssl
WANTLIB += xml2 z
WANTLIB += c++ c++abi

MODULES=		devel/gettext

LIB_DEPENDS=            audio/id3lib \
			devel/glib2 \
			net/curl \
			textproc/libxml

CONFIGURE_STYLE=        gnu
CONFIGURE_ENV=          CPPFLAGS="-lm -I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/castget
	${INSTALL_DATA} ${WRKSRC}/castgetrc.example \
		${PREFIX}/share/examples/castget

.include <bsd.port.mk>
