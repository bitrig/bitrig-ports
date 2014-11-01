# $OpenBSD: Makefile,v 1.59 2014/11/01 00:56:44 jca Exp $

COMMENT =	command-driven interactive function plotting program

V =		4.6
PATCHLEVEL =	3
REVISION =	8
DISTNAME =	gnuplot-${V}.${PATCHLEVEL}
CATEGORIES =	math graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnuplot/}

HOMEPAGE =	http://www.gnuplot.info/

# see Copyright in source
# http://gnuplot.cvs.sourceforge.net/gnuplot/gnuplot/Copyright
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses pthread readline z
WANTLIB += c++ c++abi
LIB_DEPENDS=	devel/readline

BUILD_DEPENDS =	emacs->=24:editors/emacs

FLAVORS =	no_cairo no_x11  with_emacs
FLAVOR ?=

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-linux-vga \
			--without-latex \
			--without-tutorial \
			--with-readline \
			--with-lasergnu \
			--disable-wxwidgets \
			--disable-qt \
			--without-lua \
			--without-pdf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		appdefaultdir="${PREFIX}/lib/X11/app-defaults/"

TEST_IS_INTERACTIVE =	x11

SUBST_VARS =	V

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += --without-x \
		  --without-gd
.else
MODULES +=	converters/libiconv
LIB_DEPENDS +=	graphics/gd
WANTLIB +=	X11 fontconfig freetype jpeg png gd>=20 tiff vpx \
		${MODLIBICONV_WANTLIB}
CONFIGURE_ARGS += --with-x
.endif

.if ${FLAVOR:Mno_cairo} || ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += --without-cairo
.else
MODULES +=	devel/gettext
LIB_DEPENDS +=	devel/pango	\
		graphics/cairo
WANTLIB +=	gobject-2.0 pangocairo-1.0 cairo glib-2.0 pango-1.0 pangoft2-1.0
.endif

.if ${FLAVOR:Mwith_emacs}
BUILD_DEPENDS =	editors/emacs
.else
CONFIGURE_ARGS += --without-lisp-files
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/lasergnu ${PREFIX}/bin/lasergnu

.include <bsd.port.mk>
