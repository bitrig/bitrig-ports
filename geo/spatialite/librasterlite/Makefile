# $OpenBSD: Makefile,v 1.1.1.1 2013/03/20 21:55:28 landry Exp $

COMMENT =	store rasters coverages within spatialite
PROJECT =	librasterlite
DISTNAME =	${PROJECT}-1.1f
REVISION =	1
SHARED_LIBS =	rasterlite 0.0 #2.0

# breaks build if static is disabled
LIBTOOL_FLAGS =

LIB_DEPENDS +=	geo/spatialite/libspatialite \
		graphics/png \
		devel/geotiff

WANTLIB += c freexl geos geos_c geotiff jpeg m png proj pthread
WANTLIB += spatialite sqlite3 tiff z
WANTLIB += c++ c++abi

.include <bsd.port.mk>
