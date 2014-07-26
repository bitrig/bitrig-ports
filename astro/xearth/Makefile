# $OpenBSD: Makefile,v 1.27 2013/10/11 21:20:54 naddy Exp $

COMMENT=	set the root window to the image of earth
DISTNAME=	xearth-1.1
CATEGORIES=	astro x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes

REVISION =	5
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xt c m

CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
