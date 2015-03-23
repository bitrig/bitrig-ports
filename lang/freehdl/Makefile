# $OpenBSD: Makefile,v 1.5 2015/03/16 18:07:49 naddy Exp $

COMMENT=	open-source (C++ generating) VHDL simulator

V=		0.0.7
DISTNAME=	freehdl-${V}
PKGNAME=	freehdl-${V}
REVISION=	2
CATEGORIES=	lang cad

SHARED_LIBS +=  ieee                      0.0 # 0.0
SHARED_LIBS +=  freehdl-cdfggen           0.0 # 0.0
SHARED_LIBS +=  freehdl-fire              0.0 # 0.0
SHARED_LIBS +=  freehdl-kernel            0.0 # 0.0
SHARED_LIBS +=  freehdl-std               0.0 # 0.0
SHARED_LIBS +=  freehdl-vaul              0.0 # 0.0

HOMEPAGE=	http://www.freehdl.seul.org/

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/~enaroska/

WANTLIB += c m
WANTLIB += c++ c++abi pthread

USE_GMAKE=	Yes
USE_LIBTOOL= 	gnu

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
