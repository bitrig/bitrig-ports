# $OpenBSD: Makefile,v 1.7 2015/03/16 18:07:48 naddy Exp $

COMMENT=	video capture library

DISTNAME=	libvidcap-0.2.1
REVISION =	3
SHARED_LIBS=	vidcap	0.0
CATEGORIES=	graphics

HOMEPAGE=	http://libvidcap.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libvidcap/}

WANTLIB=	pthread m
WANTLIB +=	c++ c++abi

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
