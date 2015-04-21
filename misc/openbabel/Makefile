# $OpenBSD: Makefile,v 1.18 2015/04/21 18:53:15 sthen Exp $

COMMENT=	chemistry file translation program

V=		2.2.3
DISTNAME=	openbabel-${V}
REVISION=	6
CATEGORIES=	misc

SUBST_VARS=	V

SHARED_LIBS+=	openbabel	5.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c lzma m pthread xml2 z
WANTLIB +=	c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

MODULES=	converters/libiconv

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	textproc/libxml
TEST_DEPENDS=${BUILD_PKGPATH}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-inchi \
		--disable-wx-gui \
		--with-boost=${LOCALBASE}

.include <bsd.port.mk>
