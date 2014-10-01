# $OpenBSD: Makefile,v 1.12 2014/10/01 19:19:25 landry Exp $

COMMENT=	opensource implementation of the OFX specification

DISTNAME=	libofx-0.9.10
CATEGORIES=	devel
REVISION=	1

HOMEPAGE=	http://libofx.sourceforge.net/

SHARED_LIBS=	ofx 7.0	# .6.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libofx/}

MODULES=	devel/gettext
WANTLIB=	c m pthread osp
WANTLIB+=	c++ c++abi

LIB_DEPENDS=	textproc/opensp
BUILD_DEPENDS =	devel/help2man


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-libcurl \
		--disable-doxygen \
		--disable-dot \
		--disable-gengetopt

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/libofx/html

.include <bsd.port.mk>
