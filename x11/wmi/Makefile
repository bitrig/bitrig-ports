# $OpenBSD: Makefile,v 1.18 2013/10/11 23:51:54 naddy Exp $

BROKEN=		needs work on bitrig

COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION=	6
CATEGORIES=	x11

HOMEPAGE=	http://wmi.suckless.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xft Xrender c expat fontconfig
WANTLIB += freetype m z pthread-stubs xcb
WANTLIB += c++ c++abi pthread

MASTER_SITES=	http://code.suckless.org/dl/misc/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
