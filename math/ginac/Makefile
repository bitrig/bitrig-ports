# $OpenBSD: Makefile,v 1.20 2015/01/06 13:19:05 pirofti Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.6.3
SHARED_LIBS +=	ginac	4.0	# 0.4
CATEGORIES=	math

REVISION=	2

HOMEPAGE=	http://www.ginac.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/GiNaC/ \
		${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline gmp cln
WANTLIB +=	c++ c++abi pthread

MODULES =       lang/python
BUILD_DEPENDS =	devel/doxygen
LIB_DEPENDS=	devel/cln \
		devel/readline

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

TEST_TARGET=	check

.include <bsd.port.mk>
