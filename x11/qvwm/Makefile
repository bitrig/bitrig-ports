# $OpenBSD: Makefile,v 1.22 2015/02/16 22:57:14 naddy Exp $

COMMENT=	Windows 95/98/NT like window manager

DISTNAME=	qvwm-1.1.8
REVISION=	6
CATEGORIES=     x11
MASTER_SITES=	${HOMEPAGE}/archive/qvwm/

HOMEPAGE=	http://www.csg.is.titech.ac.jp/~kourai/qvwm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext Xpm Xss c m sndio
WANTLIB +=		c++ c++abi pthread

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --without-esd \
		--without-imlib
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO" LIBS="-lsndio"

# the build-scheme will get confused otherwise
post-patch:
	rm ${WRKDIST}/src/yaccsrc.{cc,h}

.include <bsd.port.mk>
