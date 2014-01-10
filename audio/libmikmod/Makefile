# $OpenBSD: Makefile,v 1.26 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT=	mikmod sound library

DISTNAME=	libmikmod-3.2.0
SHARED_LIBS +=	mikmod               3.0      # .3.0
CATEGORIES=	audio devel
REVISION=0

HOMEPAGE=	http://mikmod.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mikmod/}

WANTLIB=	m sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CFLAGS +=	-DDRV_SNDIO
CONFIGURE_ENV=	LIBRARY_LIB="-lsndio"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-dl \
		 --disable-oss \
		 --disable-esd

post-extract:
	cp ${FILESDIR}/drv_sndio.c ${WRKSRC}/drivers

.include <bsd.port.mk>
