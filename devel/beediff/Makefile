# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:01 espie Exp $

COMMENT=	graphical file comparator

V=		1.9
DISTNAME=	beediff_${V}_src
PKGNAME=	beediff-${V}
REVISION =	7
CATEGORIES=	textproc x11 devel

HOMEPAGE=	http://www.beesoft.pl/index.php?id=beediff
MASTER_SITES=	http://www.beesoft.pl/download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext c m pthread
WANTLIB += lib/qt4/QtGui ICE SM Xi Xinerama Xrender fontconfig freetype
WANTLIB += c++ c++abi pthread

WRKDIST=	${WRKDIR}/beediff

MODULES=	devel/gettext \
		x11/qt4
NO_TEST=	Yes

MAKE_FLAGS=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 beediff.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/beediff ${PREFIX}/bin

.include <bsd.port.mk>
