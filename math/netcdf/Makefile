# $OpenBSD: Makefile,v 1.25 2016/03/10 11:50:13 naddy Exp $ 

BROKEN-powerpc=	fails to build
BROKEN-hppa =	fails to configure

COMMENT=	library for machine-independent, array-oriented data access

DISTNAME=	netcdf-3.6.2
REVISION=	3
CATEGORIES=	math

SHARED_LIBS=	netcdf		4.0 \
		netcdff		4.0 \
		netcdf_c++	4.0

HOMEPAGE=	http://www.unidata.ucar.edu/packages/netcdf/

MODULES =	fortran
MODFORTRAN_COMPILER = gfortran
BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS} 

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m
WANTLIB +=		c++ c++abi pthread

MASTER_SITES=		ftp://ftp.unidata.ucar.edu/pub/netcdf/

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-Df2cFortran"
CONFIGURE_ARGS+=	--enable-shared \
			--disable-f90

USE_GMAKE=		Yes
USE_GROFF =		Yes
SEPARATE_BUILD=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netcdf
	@cd ${WRKSRC}/man && ${INSTALL_DATA} *.txt *.pdf \
		${PREFIX}/share/doc/netcdf

.include <bsd.port.mk>
