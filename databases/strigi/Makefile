# $OpenBSD: Makefile,v 1.20 2016/03/18 23:12:16 naddy Exp $

COMMENT =	document indexer
CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	https://projects.kde.org/projects/kdesupport/strigi/

# hand-rolled from strigi* submodules at quickgit.kde.org
DISTNAME =	strigi-0.7.7pl1
REVISION =	4

MASTER_SITES =	https://spacehopper.org/mirrors/ \
		ftp://3ps.if.ua/pub/OpenBSD/distfiles/ \
		http://www.ohvost.ru/dnl/kde/src/

# LGPLv2+
PERMIT_PACKAGE_CDROM =		Yes

SHARED_LIBS +=  searchclient       2.0
SHARED_LIBS +=  streamanalyzer     2.0
SHARED_LIBS +=  streams            2.0
SHARED_LIBS +=  strigihtmlgui      2.0
SHARED_LIBS +=  strigiqtdbusclient 2.0

BUILD_DEPENDS =	devel/cppunit \
		devel/boost

LIB_DEPENDS =	archivers/bzip2 \
		graphics/exiv2 \
		graphics/ffmpeg \
		sysutils/gamin \
		textproc/clucene>=2.3 \
		textproc/libxml \
		x11/dbus

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += bz2 c clucene-core clucene-shared dbus-1 exiv2 fam m pthread
WANTLIB += xml2 z avcodec avformat avutil swscale
WANTLIB += c++ c++abi

MODULES =		devel/cmake \
			converters/libiconv \
			x11/qt4
MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
CXXFLAGS=		-std=c++11

# Not ported
CONFIGURE_ARGS =	-DENABLE_LOG4CXX:Bool=No

# Depends on Java
CONFIGURE_ARGS +=	-DENABLE_REGENERATEXSD:Bool=No

.include <bsd.port.mk>
