# $OpenBSD: Makefile,v 1.27 2016/03/11 19:59:14 naddy Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.8
REVISION=	5
CATEGORIES=	graphics multimedia
MASTER_SITES=	https://ffmpegthumbnailer.googlecode.com/files/

SHARED_LIBS=	ffmpegthumbnailer	4.1

HOMEPAGE=	https://github.com/dirkvdb/ffmpegthumbnailer

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avcodec avformat avutil c jpeg m png pthread
WANTLIB += swscale x264
WANTLIB += c++ c++abi

LIB_DEPENDS=	graphics/ffmpeg \
		graphics/jpeg \
		graphics/png

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
