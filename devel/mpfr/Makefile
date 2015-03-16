# $OpenBSD: Makefile,v 1.16 2015/03/16 18:07:44 naddy Exp $

COMMENT=	library for multiple-precision floating-point computations

DISTNAME=	mpfr-3.1.2
PKGNAME=	${DISTNAME}.5# patch level
REVISION=	0
SHARED_LIBS=	mpfr		1.1	# 5.0
CATEGORIES=	devel math
HOMEPAGE=	http://www.mpfr.org/
REVISION=	0

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}${DISTNAME}/
DIST_SUBDIR=	${DISTNAME}
.for i in 01 02 03 04 05
PATCHFILES+=	patch$i
.endfor
PATCH_DIST_STRIP=-p1

LIB_DEPENDS=	devel/gmp>=4.2.0
WANTLIB=	gmp

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gmp=${LOCALBASE}

# Do not install useless docs and misplaced examples.
FAKE_FLAGS=	docdir=""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpfr
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/mpfr

.include <bsd.port.mk>
