# $OpenBSD: Makefile,v 1.22 2015/06/27 10:26:38 pirofti Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.6.4
SHARED_LIBS +=	ginac	5.0	# 0.5
CATEGORIES=	math

REVISION=	2

HOMEPAGE=	http://www.ginac.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	 ${HOMEPAGE} \
		 ftp://ftpthep.physik.uni-mainz.de/pub/GiNaC/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline gmp cln
WANTLIB +=	c++ c++abi pthread

MODULES =       lang/python
BUILD_DEPENDS =	devel/doxygen
LIB_DEPENDS=	devel/cln \
		devel/readline

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

TEST_TARGET=	check

.include <bsd.port.mk>
