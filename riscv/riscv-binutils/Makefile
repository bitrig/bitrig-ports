# $OpenBSD: Makefile,v 1.18 2012/03/07 20:39:37 kurt Exp $

COMMENT=	GNU binutils for riscv
DPB_PROPERTIES= parallel

VER =		2.25
PKGNAME =	riscv-binutils-${VER}

EXTRACT_SUFX=	.tar.bz2

REALDISTNAME = 	binutils-${VER}
DISTNAME =	${REALDISTNAME}
DISTFILES =	${REALDISTNAME}.tar.bz2
EXTRACT_ONLY =	${REALDISTNAME}.tar.bz2

CATEGORIES=	riscv

#GPLv3
PERMIT_PACKAGE_CDROM=Yes
WANTLIB=	c

BUILD_DEPENDS+=	devel/gettext

#FLAVORS= riscvcross

TARGET_ARCH=	riscv
CONFIGURE_ARGS+=--target=${TARGET_ARCH}-unknown-bitrig${OSREV}

CONFIGURE_ARGS+=--enable-commonbfdlib=no
CONFIGURE_ARGS+=--disable-nls
CONFIGURE_ARGS+=--disable-multilib

MASTER_SITES =	${MASTER_SITE_GNU:=binutils/}

HOMEPAGE =	http://www.gnu.org/software/binutils

USE_LIBTOOL=	Yes
USE_GROFF=	Yes
LIBTOOL_FLAGS=  --tag=disable-shared

CONFIGURE_STYLE=gnu

SUBST_VARS +=	OSREV
USE_GMAKE=	yes

post-extract:
	@cp -R ${FILESDIR}/* ${WRKSRC}/

.include <bsd.port.mk>
