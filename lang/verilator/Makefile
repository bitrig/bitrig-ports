# $OpenBSD: Makefile,v 1.7 2014/05/20 19:36:27 jasper Exp $

BROKEN=		needs work on bitrig

COMMENT=	very fast free Verilog HDL simulator

DISTNAME =	verilator-3.860
REVISION =	0
CATEGORIES=	lang devel

HOMEPAGE=	http://www.veripool.org/wiki/verilator/Intro

# LGPLv3 or Perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.veripool.org/ftp/
EXTRACT_SUFX=		.tgz

WANTLIB=		c m
WANTLIB +=		c++ c++abi pthread

BUILD_DEPENDS +=	devel/bison

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		VERILATOR_ROOT=${PREFIX}/share/verilator/ \
			COPT="${CFLAGS}"

USE_GMAKE=		Yes

TEST_TARGET=		test
TEST_FLAGS=		VERILATOR_ROOT=${WRKSRC}

.include <bsd.port.mk>
