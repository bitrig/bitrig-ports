# $OpenBSD: Makefile,v 1.30 2014/09/02 09:23:13 espie Exp $

BROKEN =	needs work on bitrig

COMMENT =	multi-way scrolling shoot'em up for X11, addictive
#'

DISTNAME=	xkobo-1.11
REVISION =	5
CATEGORIES=	games

MASTER_SITES =	${MASTER_SITE_XCONTRIB:=games/}  \
		ftp://ftp.uoknor.edu/mirrors/X/contrib/games/

FLAVORS =	harder
FLAVOR ?=

.if ${FLAVOR} == "harder"
PATCH_LIST = 	patch-* extra-hard
.endif

# GPL
PERMIT_PACKAGE_CDROM =	Yes
	
WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb
WANTLIB+=	c++ c++abi

CONFIGURE_STYLE =	imake

ALL_TARGET =	xkobo
NO_TEST =	Yes

post-install: 
	${INSTALL_MAN} ${WRKSRC}/xkobo.man ${PREFIX}/man/man1/xkobo.1

.include <bsd.port.mk>
