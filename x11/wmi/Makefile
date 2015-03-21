# $OpenBSD: Makefile,v 1.19 2015/03/21 19:43:35 jca Exp $

BROKEN=		needs work on bitrig

COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION=	7
CATEGORIES=	x11

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xft c m
WANTLIB += c++ c++abi pthread

MASTER_SITES=	http://dl.suckless.org/misc/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
