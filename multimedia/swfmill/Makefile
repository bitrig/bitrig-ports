# $OpenBSD: Makefile,v 1.4 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.1
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c exslt freetype gcrypt gpg-error m png xml2 xslt z
WANTLIB +=	c++ c++abi pthread

MODULES=	devel/gettext
LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
