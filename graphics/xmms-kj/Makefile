# $OpenBSD: Makefile,v 1.19 2016/03/18 21:38:24 naddy Exp $

COMMENT=	XMMS visualization plugin, to display Kjofol skins

VERSION=	0.95
DISTNAME=	kint_xmms-${VERSION}
PKGNAME=	xmms-kj-${VERSION}
REVISION =	4
CATEGORIES=	graphics
HOMEPAGE=	http://www.csse.monash.edu.au/~timf/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= X11 Xext Xi gdk glib gmodule gtk m png>=3 xcb xmms>=2 z

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.csoft.org/xmms-kj/

LIB_DEPENDS=	audio/xmms \
		graphics/png

MODULES=	devel/gettext

WRKDIST=	${WRKDIR}/xmms-kj
MAKE_FILE=      makefile
ALL_TARGET=	vislib
NO_TEST=	Yes

MAKE_FLAGS=	CC="${CC}"
MTREE_FILE=	${FILESDIR}/mtree

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/libkjofol.so \
	    ${PREFIX}/lib/xmms/Visualization
	${INSTALL_DATA} ${WRKDIST}/default.zip \
	    ${PREFIX}/share/xmms/kjofol

.include <bsd.port.mk>
