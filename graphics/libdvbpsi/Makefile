# $OpenBSD: Makefile,v 1.17 2015/10/05 06:08:39 ajacoutot Exp $

COMMENT=	library for decoding/generating MPEG TS/DVB PSI tables

V=		1.3.0
DISTNAME=	libdvbpsi-${V}
REVISION=	1
CATEGORIES=	devel graphics
MASTER_SITES=	https://download.videolan.org/pub/libdvbpsi/${V}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvbpsi	8.1

HOMEPAGE=	http://www.videolan.org/developers/libdvbpsi.html

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/.auto

.include <bsd.port.mk>
