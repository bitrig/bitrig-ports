# $OpenBSD: Makefile,v 1.35 2014/10/16 13:00:56 nigel Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-4.0.5

CATEGORIES=	net

HOMEPAGE=	http://tcpreplay.appneta.com/	

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=tcpreplay/}

WANTLIB=	c dnet>=1

CONFIGURE_STYLE= gnu
USE_GROFF =	Yes
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config

LIB_DEPENDS=	net/libdnet
BUILD_DEPENDS=	devel/autogen

.include <bsd.port.mk>
