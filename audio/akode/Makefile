# $OpenBSD: Makefile,v 1.34 2013/03/21 08:45:11 ajacoutot Exp $

BROKEN=		needs work on bitrig

SHARED_ONLY=	Yes

COMMENT=	decoding library for KDE Multimedia

DISTNAME=	akode-2.0.2
REVISION=	22

SHARED_LIBS +=	akode                2.1      # .2.0

CATEGORIES=	audio multimedia x11/kde

HOMEPAGE=	http://www.carewolf.com/akode/

MASTER_SITES=	http://www.kde-apps.org/CONTENT/content-files/
EXTRACT_SUFX=	.tar.bz2
DISTFILES=	30375-${DISTNAME}${EXTRACT_SUFX}

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	FLAC c ltdl m mad ogg pthread samplerate sndio speex \
		vorbis vorbisenc vorbisfile z
WANTLIB+=	c++ c++abi

LIB_DEPENDS=	audio/flac \
		audio/libmad \
		audio/libsamplerate \
		audio/speex \
		audio/libvorbis \
		devel/libtool,-ltdl

USE_GMAKE=	Yes
USE_LIBTOOL=	gnu

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
# uses libtoolize
BUILD_DEPENDS+=	devel/libtool

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/admin
CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.60
AUTOMAKE_VERSION=	1.9
CONFIGURE=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ENV=		CC=gcc CXX=g++ LIBS=-pthread
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include \
			--with-extra-libs=${LOCALBASE}/lib \
			--without-ffmpeg \
			--without-jack \
			--without-polyaudio \
			--without-oss \
			--without-sun

post-extract:
	@mkdir -p ${WRKSRC}/akode/plugins/sndio_sink
	@cp ${FILESDIR}/{Makefile.am,sndio_sink.*}  ${WRKSRC}/akode/plugins/sndio_sink

pre-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

post-install:
	@rm ${PREFIX}/lib/libakode_*.a
	@rm ${PREFIX}/lib/libakode_*.la

.include <bsd.port.mk>
