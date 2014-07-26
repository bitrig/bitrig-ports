# $OpenBSD: Makefile,v 1.7 2013/10/18 11:29:42 naddy Exp $

COMMENT=		ogg mux/demuxer
DISTNAME=		ogmtools-1.5
REVISION=		1
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.bunkus.org/videotools/ogmtools/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ogg dvdread vorbis vorbisenc
WANTLIB += c++ c++abi pthread

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-dvdread-includes=${LOCALBASE} \
			--with-dvdread-libs=${LOCALBASE}

LIB_DEPENDS=		devel/libdvdread \
			audio/libvorbis

.include <bsd.port.mk>
