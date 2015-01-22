# $OpenBSD: Makefile,v 1.10 2015/01/22 18:41:16 naddy Exp $

COMMENT =	skeletal based character animation library
DISTNAME =	cal3d-0.11.0
REVISION =	3

SHARED_LIBS =	cal3d	1.0	# .12.0

CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/cal3d/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m
WANTLIB +=	c++ c++abi pthread

MASTER_SITES =	http://download.gna.org/cal3d/sources/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
