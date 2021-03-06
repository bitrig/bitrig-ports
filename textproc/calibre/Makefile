# $OpenBSD: Makefile,v 1.50 2016/02/28 22:26:53 sthen Exp $

BROKEN = 		needs work on bitrig.

COMMENT =		ebook management application

V =			2.52.0
DISTNAME =		calibre-$V
CATEGORIES =		textproc
EXTRACT_SUFX =		.tar.xz

HOMEPAGE =		http://calibre-ebook.com/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += EGL GL MagickCore-6.Q16 MagickWand-6.Q16 Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets X11 Xext Xrender chm crypto fontconfig
WANTLIB += freetype glib-2.0 gthread-2.0 icudata icui18n icuio
WANTLIB += icuuc m mtp podofo pthread usb-1.0 z

MASTER_SITES =	https://github.com/kovidgoyal/calibre/releases/download/v$V/

MODULES =		devel/gettext \
			lang/python \
			x11/qt5

LIB_DEPENDS=		devel/chmlib \
			devel/libmtp \
			devel/libusb1 \
			graphics/ImageMagick \
			textproc/icu4c \
			textproc/podofo

COMMON_DEPENDS =	databases/py-apsw \
			devel/py-dateutil \
			devel/xdg-utils \
			graphics/libwmf \
			graphics/py-Pillow \
			net/py-dnspython \
			graphics/png \
			print/poppler, \
			print/poppler,,-qt5 \
			textproc/py-cssselect \
			textproc/py-cssutils>=0.9.9 \
			textproc/py-lxml>=2.2.8 \
			textproc/py-xml \
			www/py-beautifulsoup \
			www/py-CherryPy \
			www/py-mechanize \
			x11/py-qt5 \
			www/py-mechanize

BUILD_DEPENDS =		${COMMON_DEPENDS}

SUBST_VARS =		WRKDIR

RUN_DEPENDS =		${COMMON_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			net/py-netifaces \
			print/poppler,-utils \
			x11/gtk+3,-guic

LDFLAGS +=		-L${LOCALBASE}/lib
MAKE_ENV +=		QMAKE="${LOCALBASE}/bin/qmake-qt5"
MAKE_ENV +=		LDFLAGS="${LDFLAGS}"
MAKE_ENV +=		FT_LIB_DIR="${X11BASE}/lib"
MAKE_ENV +=		XDG_DATA_DIRS="${PREFIX}/share"
MAKE_ENV +=		PODOFO_INC_DIR="${LOCALBASE}/include/podofo"
MAKE_ENV +=		PODOFO_LIB_DIR="${LOCALBASE}/lib"

PORTHOME =		${WRKDIR}
NO_TEST =		Yes
MODPY_SETUPTOOLS =	Yes

## setup.py doesn't like the options in our python module
MODPY_DISTUTILS_BUILD =		build
MODPY_DISTUTILS_INSTALL =	install --prefix=${LOCALBASE} \
				--root=${PREFIX}

# There are ERANGE files that hard-code the python bin name
# Remove bundled cherrypy so it uses the system version
pre-configure:
	cd ${WRKSRC} && (rm -rf src/cherrypy ; \
		find . -name '*.py' -print0 | xargs -0 perl -pi -e \
		's,#!/usr/bin/env python(2)?,#!${MODPY_BIN},' )
	cd ${WRKSRC}/setup && ${SUBST_CMD} extensions.py build_environment.py
	cp ${FILESDIR}/fake-xdg ${WRKDIR}/bin; chmod +x ${WRKDIR}/bin/fake-xdg
.for i in xdg-icon-resource xdg-desktop-menu xdg-mime
	ln -s fake-xdg ${WRKDIR}/bin/$i
.endfor

do-install:
	${MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	rm -rf ${WRKDIR}/.config # to unbreak 'make clean'; created as root
	${INSTALL_DATA_DIR} ${PREFIX}/share/calibre/recipes
	cd ${WRKSRC}/recipes && find . -type f -exec \
	    ${INSTALL_DATA} {} ${PREFIX}/share/calibre/recipes/ \;

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/calibre
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/calibre

.include <bsd.port.mk>
