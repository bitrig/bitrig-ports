# $OpenBSD: Makefile,v 1.16 2016/03/01 20:36:40 jca Exp $

BROKEN-hppa =	undefined reference to `std::auto_ptr<geos::geom::Envelope>::~auto_ptr()'
COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.5.0
REVISION=	0
CATEGORIES=	geo
SHARED_LIBS=	geos	9.0 \
		geos_c	4.2

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		http://trac.osgeo.org/geos/
MASTER_SITES=		http://download.osgeo.org/geos/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	m
WANTLIB +=	c++ c++abi pthread
BUILD_DEPENDS=	devel/doxygen>=1.7.2

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-pic

post-build:
	cd $(WRKSRC)/doc && env DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC} ${MAKE_PROGRAM} doxygen-html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/geos/html
	${INSTALL_DATA} $(WRKSRC)/doc/doxygen_docs/html/* \
			${PREFIX}/share/doc/geos/html

.include <bsd.port.mk>
