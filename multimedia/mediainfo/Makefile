# $OpenBSD: Makefile,v 1.5 2016/01/11 16:22:12 naddy Exp $

BROKEN= 	needs work on bitrig

COMMENT=	display technical and tag data for video and audio files

VERSION=	0.7.81
PKGNAME=	mediainfo-${VERSION}
CATEGORIES=	multimedia
HOMEPAGE=	https://mediaarea.net/en/MediaInfo

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread z
WANTLIB +=	c++ c++abi

MASTER_SITES=	https://mediaarea.net/download/binary/mediainfo/${VERSION}/
DISTFILES=	MediaInfo_CLI_${VERSION}_GNU_FromSource.tar.xz

WRKDIST=	${WRKDIR}/MediaInfo_CLI_GNU_FromSource

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	SUBDIRS="${SUBDIRS}"
MAKE_ENV=	SUBDIRS="${SUBDIRS}"
LIBTOOL_FLAGS=	--tag=disable-shared
MODGNU_CONFIG_GUESS_DIRS=${SUBDIRS}

ZENLIBDIR=	${WRKSRC}/ZenLib/Project/GNU/Library
MEDIAINFOLIBDIR=${WRKSRC}/MediaInfoLib/Project/GNU/Library
MEDIAINFODIR=	${WRKSRC}/MediaInfo/Project/GNU/CLI

SUBDIRS=	${ZENLIBDIR} ${MEDIAINFOLIBDIR} ${MEDIAINFODIR}

NO_TEST=	Yes

# fix line endings for files that are patched
#pre-patch:
#	@sed -i "s/$$(printf \\r)\$$//" \
#	    ${WRKSRC}/MediaInfoLib/Source/MediaInfo/MediaInfo_Internal.cpp

pre-configure:
	@cp ${FILESDIR}/configure ${FILESDIR}/Makefile ${WRKSRC}
	@chmod a+x ${WRKSRC}/configure

do-install:
	@cd ${MEDIAINFODIR} && ${LIBTOOL} ${LIBTOOL_FLAGS} --mode=install \
	    ${INSTALL_PROGRAM} mediainfo ${PREFIX}/bin

.include <bsd.port.mk>
