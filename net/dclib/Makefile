# $OpenBSD: Makefile,v 1.20 2015/12/03 21:24:31 sthen Exp $

COMMENT=	Library for direct-connect protocol

DISTNAME=	dclib-0.3.7
REVISION=	9
CATEGORIES=	net
SHARED_LIBS=	dc	1.0

HOMEPAGE=	http://wxdcgui.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 crypto lzma m pthread ssl xml2 z
WANTLIB += c++ c++abi

MASTER_SITES=	https://spacehopper.org/mirrors/berlios/dcgui/

MODULES=	converters/libiconv
LIB_DEPENDS=	archivers/bzip2 \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
