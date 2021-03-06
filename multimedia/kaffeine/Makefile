# $OpenBSD: Makefile,v 1.39 2016/01/17 17:29:09 sthen Exp $

COMMENT=	video player for KDE

VERSION=	0.8.8
DISTNAME=	kaffeine-${VERSION}
REVISION=	17
CATEGORIES=	multimedia x11 x11/kde
MASTER_SITES=	http://hftom.free.fr/ \
		${MASTER_SITE_SOURCEFORGE:=kaffeine/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	kaffeineaudioencoder	0.0

HOMEPAGE=	http://kaffeine.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ICE SM X11 Xau Xdmcp Xext Xfixes Xi Xinerama Xrender
WANTLIB += Xt Xtst art_lgpl_2 avutil c cdio cdio_cdda cdio_paranoia
WANTLIB += expat fam fontconfig freetype idn
WANTLIB += m ogg pcre pcreposix pthread pthread-stubs util
WANTLIB += vorbis vorbisenc xcb xine z jpeg png xdg-basedir
WANTLIB += X11-xcb Xdamage Xxf86vm drm glapi xcb-dri2 xcb-glx
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio ${KDE}/kjs
WANTLIB += ${KDE}/kparts ${KDE}/kutils ${KDE}/kwalletclient
WANTLIB += c++ c++abi

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	x11/kde/libs3 \
		audio/libvorbis \
		audio/libcdio \
		multimedia/xine-lib

SUBST_VARS=	VERSION

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.5.7

PORTHOME=	${WRKDIR}

MAKE_ENV=	${CONFIGURE_ENV}
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --disable-libsuffix \
		 --without-arts \
		 --without-gstreamer \
		 --without-lame
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
