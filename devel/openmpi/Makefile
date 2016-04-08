# $OpenBSD: Makefile,v 1.16 2015/05/29 12:45:04 pascal Exp $

COMMENT =		open source MPI-2 implementation
BROKEN-hppa =		error: Could not determine global symbol label prefix
BROKEN-powerpc =	checking if Fortran 77 compiler works... no

V=			1.4.1
DISTNAME =		openmpi-$V
REVISION =		5

SHARED_LIBS =		mca_common_sm 1.0 \
			mpi 0.1 \
			mpi_cxx 0.0 \
			mpi_f77 0.0 \
			open-pal 0.0 \
			open-rte 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.open-mpi.org/

MODULES =		fortran
MODFORTRAN_COMPILER =	gfortran
BUILD_DEPENDS +=	${MODFORTRAN_BUILD_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB	+=		c m pthread util z
WANTLIB +=		c++ c++abi

MASTER_SITES =		${HOMEPAGE}/software/ompi/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/downloads/

USE_GROFF =		Yes
# XXX: uses a locally modified libtool.
USE_LIBTOOL =		No

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/openmpi/
CONFIGURE_STYLE =	gnu

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/config \
				${WRKSRC}/ompi/contrib/vt/vt/ \
				${WRKSRC}/ompi/mca/io/romio/romio/confdb/ \
				${WRKSRC}/opal/mca/paffinity/linux/plpa/config \
				${WRKSRC}/opal/libltdl/config

# openmpi's otfinfo conflicts with the one from texlive
post-install:
	mv ${PREFIX}/bin/otfinfo ${PREFIX}/bin/otfinfompi

.include <bsd.port.mk>
