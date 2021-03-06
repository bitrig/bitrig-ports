# $OpenBSD: Makefile,v 1.26 2016/03/19 22:48:28 naddy Exp $

COMMENT=	twin panel file manager for KDE

DISTNAME=	krusader-1.80.0
REVISION=	17

CATEGORIES=	x11 x11/kde

HOMEPAGE=	http://krusader.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio ${KDE}/kjs
WANTLIB += ${KDE}/kjsembed ${KDE}/konq ${KDE}/kparts ${KDE}/kutils
WANTLIB += ${KDE}/kwalletclient
WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c
WANTLIB += drm expat fam fontconfig freetype glapi idn jpeg lcms m mng
WANTLIB += pcre pcreposix png pthread pthread-stubs qui-mt util
WANTLIB += xcb xcb-dri2 xcb-glx z
WANTLIB += c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=krusader/}

PORTHOME=	${WRKDIR}

MODULES=	x11/kde devel/gettext

USE_GMAKE=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	x11/kde/libs3 \
		x11/kde/base3 \
		x11/kde/bindings3 \
		x11/qt3,-main

AUTOCONF_VERSION=2.61

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--disable-dependency-tracking \
		--with-extra-libs="${LOCALBASE}/lib" \
		--with-extra-includes="${LOCALBASE}/include" \
		--without-acl

.include <bsd.port.mk>
