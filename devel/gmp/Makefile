# $OpenBSD: Makefile,v 1.26 2013/04/13 20:19:50 miod Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-5.1.3
SHARED_LIBS +=	gmp                  10.0     # 11.3
SHARED_LIBS +=	gmpxx                2.0      # 7.3
CATEGORIES=	devel math
REVISION=	2

HOMEPAGE=	http://gmplib.org/

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m
WANTLIB += c++ c++abi pthread

MASTER_SITES=	ftp://ftp.gmplib.org/pub/${DISTNAME}/ \
		${MASTER_SITE_GNU:=gmp/}
EXTRACT_SUFX =	.tar.lz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-cxx
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-bitrig${OSrev}

.include <bsd.port.mk>
