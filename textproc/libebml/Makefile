# $OpenBSD: Makefile,v 1.14 2015/10/24 07:53:22 ajacoutot Exp $

COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.3.3
CATEGORIES=	textproc
MASTER_SITES=	http://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	ebml	3.0

HOMEPAGE=	http://www.matroska.org/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m
WANTLIB +=	c++ c++abi pthread

USE_GMAKE=	Yes
USE_LIBTOOL=	gnu
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
