# $OpenBSD: Makefile,v 1.37 2016/03/10 22:51:45 naddy Exp $

COMMENT=	free H.264/MPEG-4 AVC encoder

V=		20150728
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	15.0

HOMEPAGE=	http://www.videolan.org/developers/x264.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/yasm
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--enable-shared \
		--system-libx264 \
		--disable-ffms \
		--disable-gpac \
		--disable-lavf \
		--disable-swscale \
		--enable-static \
		--prefix=${PREFIX}

# WORKAROUND TO BUILD
#.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS+=--disable-asm
#.endif

NO_TEST=	Yes

.include <bsd.port.mk>
