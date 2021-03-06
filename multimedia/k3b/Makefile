# $OpenBSD: Makefile,v 1.35 2016/03/19 22:48:28 naddy Exp $

COMMENT =		CD/DVD creator

DISTNAME =		k3b-1.0.4
REVISION=		26
CATEGORIES =		multimedia

SHARED_LIBS =		k3b	0.0	# 3.0
SHARED_LIBS +=		k3bdevice	0.0	# 5.0

HOMEPAGE =		http://k3b.plainblack.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  FLAC FLAC++ ICE SM X11 Xext Xfixes Xrender Xt
WANTLIB += art_lgpl_2 avcodec avformat avutil bz2 c crypto
WANTLIB += dvdread expat fam fontconfig freetype gsm idn jpeg
WANTLIB += m mad mp3lame mpcdec ogg opus png pthread samplerate
WANTLIB += sndfile speex ssl tag util vorbis
WANTLIB += vorbisenc vorbisfile vpx x264 xcb xvidcore z
WANTLIB += pthread-stubs swresample x265
WANTLIB += X11-xcb Xdamage Xxf86vm drm glapi xcb-dri2 xcb-glx
WANTLIB += ${KDE}/DCOP ${KDE}/artsc ${KDE}/kdecore ${KDE}/kdefx
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts
WANTLIB += ${KDE}/kwalletclient
WANTLIB += c++ c++abi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=k3b/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde devel/gettext

RUN_DEPENDS =		sysutils/cdrtools \
			sysutils/dvd+rw-tools \
			audio/normalize \
			misc/cdrdao \
			audio/sox \
			multimedia/transcode \
			x11/gtk+3,-guic \
			devel/desktop-file-utils

LIB_DEPENDS =		audio/flac \
			audio/lame \
			audio/libmad \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/taglib \
			devel/libdvdread \
			graphics/ffmpeg>=20121026 \
			graphics/jpeg \
			x11/kde/libs3

USE_GMAKE =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-qt-dir=${MODQT_QTDIR} \
			${MODQT_CONFIGURE_ARGS} \
			${MODKDE_CONFIGURE_ARGS} \
			--without-musicbrainz \
			--without-resmgr \
			--without-hal \
			--without-alsa \
			--without-cdrecord-suid-root

CONFIGURE_ENV =		${MODKDE_CONFIGURE_ENV} \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# For QSettings to write its setup
PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
