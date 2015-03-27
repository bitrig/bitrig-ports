# $OpenBSD: Makefile,v 1.22 2015/03/27 08:11:28 ajacoutot Exp $

BROKEN= 	needs work on bitrig

COMMENT=	portable DjVu viewer and browser plugin

DISTNAME=	djview-4.9
PKGNAME=	${DISTNAME:S/djview/djview4/}
REVISION=	2
CATEGORIES=	graphics print

HOMEPAGE=	http://djvu.sourceforge.net/djview4.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE QtGui QtNetwork SM X11 Xext Xi Xinerama Xrender
WANTLIB += c djvulibre fontconfig freetype m pthread tiff
WANTLIB += c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=djvu/}

MODULES=	x11/qt4

LIB_DEPENDS=	graphics/djvulibre

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tiff=${LOCALBASE}
CONFIGURE_ENV+=	QTDIR="${MODQT4_QTDIR}" \
		CPPFLAGS="-I${X11BASE}/include"

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/djview/djview4/}

.include <bsd.port.mk>
