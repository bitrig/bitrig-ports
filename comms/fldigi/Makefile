# $OpenBSD: Makefile,v 1.11 2016/01/17 23:27:17 sthen Exp $

BROKEN= 	needs work on bitrig

COMMENT=	soundcard-based software modem for Amateur Radio use

DISTNAME=	fldigi-3.23.06

CATEGORIES=	comms hamradio

REVISION=	1

HOMEPAGE=	http://www.w1hkj.com/Fldigi.html

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama c fltk
WANTLIB += fltk_images fontconfig hamlib jpeg m png portaudio
WANTLIB += pthread samplerate sndfile z
WANTLIB += c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fldigi/}

MODULES=	devel/gettext
RUN_DEPENDS=	devel/desktop-file-utils
BUILD_DEPENDS=	textproc/asciidoc
LIB_DEPENDS=	audio/libsamplerate \
		audio/libsndfile \
		audio/portaudio-svn \
		comms/hamlib \
		graphics/png \
		x11/fltk

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-oss \
		--without-pulseaudio

MAKE_FLAGS=	ASCIIDOC_ICONS_DIR=${SYSCONFDIR}/asciidoc/images/icons

# supplied empty *.1 files are newer than .txt files
post-extract:
	touch ${WRKSRC}/doc/*txt

.include <bsd.port.mk>
