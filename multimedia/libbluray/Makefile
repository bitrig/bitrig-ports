# $OpenBSD: Makefile,v 1.10 2016/03/18 21:38:24 naddy Exp $

COMMENT =		library supporting Blu-ray playback

V =			0.9.2
DISTNAME =		libbluray-${V}
CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libbluray.html

MASTER_SITES =		https://download.videolan.org/pub/videolan/libbluray/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libbluray/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c expat fontconfig freetype lzma m pthread pthread-stubs
WANTLIB +=		xml2 z

SHARED_LIBS +=		bluray		2.1	# 10.0

MODULES =		converters/libiconv

LIB_DEPENDS =		textproc/libxml
BUILD_DEPENDS =		devel/bison

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/build-aux
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS +=	--disable-bdjava \
			--disable-doxygen-doc \
			--disable-optimizations \
			--enable-udf

.include <bsd.port.mk>
