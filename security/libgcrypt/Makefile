# $OpenBSD: Makefile,v 1.34 2014/03/09 20:02:37 jasper Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.6.1
REVISION=		0
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               19.1     # 20.1

HOMEPAGE=		http://www.gnupg.org/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgcrypt/}

MODULES=		devel/gettext
LIB_DEPENDS=		security/libgpg-error

# missing arm asm and clang enables neon which is also missing src
.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ENV +=        CC=gcc CXX=g++
.endif

# really bad asm that doesn't compile
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=        CC=gcc CXX=g++
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static

.if ${MACHINE_ARCH} != "hppa"
CONFIGURE_ARGS+=       --disable-asm
.endif

.include <bsd.port.mk>
