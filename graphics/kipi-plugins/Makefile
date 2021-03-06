# $OpenBSD: Makefile,v 1.46 2016/03/19 22:48:27 naddy Exp $

COMMENT-main =		kde image plugins
COMMENT-cal =		kde image calendar plugin
CATEGORIES =		graphics x11 x11/kde
DISTNAME =		kipi-plugins-0.1.6
PKGNAME-main =		${DISTNAME}
PKGNAME-cal =		kipi-kcal-plugin-0.1.6
PKGSPEC-main =		kipi-plugins-<1
REVISION-main =		14
REVISION-cal =		12

HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}
EXTRACT_SUFX =		.tar.bz2
SHARED_LIBS +=	kipiplugins          0.0      # .0.1

# Should we provide a gpod flavor ?

SUBST_VARS +=	PKGNAME-cal
MULTI_PACKAGES =-main -cal
LIB_DEPENDS =	x11/kde/libs3 \
		graphics/libkipi

LIB_DEPENDS-main =${LIB_DEPENDS} \
		graphics/libgphoto2>=2.5 \
		graphics/libkexiv2>=0.1.5 \
		graphics/libkdcraw

LIB_DEPENDS-cal =${LIB_DEPENDS} \
		x11/kde/pim3 \
		${BUILD_PKGPATH}

RUN_DEPENDS =	graphics/ImageMagick

MODULES =	devel/gettext \
		x11/kde

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 drm expat
WANTLIB += fontconfig freetype idn jpeg lcms m mng png util xcb
WANTLIB += z X11-xcb Xau Xdmcp fam glapi pthread pthread-stubs xcb-dri2 xcb-glx
WANTLIB += lib/qt3/qt-mt>=3.33 lzma
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio ${KDE}/kipi ${KDE}/kparts
WANTLIB += ${KDE}/kwalletclient
WANTLIB += c++ c++abi

WANTLIB-main =  ${WANTLIB} exif exiv2 exslt gcrypt gpg-error gphoto2
WANTLIB-main += gphoto2_port ltdl pcre pcreposix tiff xml2 xslt 
WANTLIB-main += ${KDE}/kdcraw ${KDE}/kexiv2 ${KDE}/khtml ${KDE}/kjs
WANTLIB-main += ${KDE}/kutils

WANTLIB-cal =  ${WANTLIB} ${KDE}/kabc ${KDE}/kcal kipiplugins
WANTLIB-cal += ${KDE}/kmime ${KDE}/kresources ${KDE}/ktnef ${KDE}/vcard

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
MODKDE_VERSION =	3.5.7
AUTOCONF =		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS} \
			--disable-ipodexport
USE_GMAKE =		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV =		${CONFIGURE_ENV}

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS} LIB_TIFF='-ltiff -lz'
MAKE_FLAGS +=		LIBRESOLV=

# GPL
PERMIT_PACKAGE_CDROM =		Yes

.include <bsd.port.mk>
