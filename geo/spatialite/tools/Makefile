# $OpenBSD: Makefile,v 1.3 2015/04/21 18:51:24 sthen Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-4.2.0
REVISION =	0

REVISION=	2

LIB_DEPENDS +=	geo/spatialite/libspatialite \
		geo/spatialite/readosm \
		devel/readline

WANTLIB += c curses expat freexl geos geos_c lzma m proj pthread
WANTLIB += readline readosm spatialite sqlite3 xml2 z
WANTLIB += c++ c++abi

.include <bsd.port.mk>
