# $OpenBSD: Makefile,v 1.16 2016/03/18 23:12:18 naddy Exp $

COMMENT=	scim plugin for qt

DISTNAME=	scim-qtimm-0.9.4
REVISION=	6

CATEGORIES=	inputmethods

HOMEPAGE=	http://www.scim-im.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 m pthread scim-1.0 scim-x11utils-1.0 xcb
WANTLIB +=	c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		x11/qt3
LIB_DEPENDS=	inputmethods/scim

SUBST_VARS=     MODQT_PLUGINS

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-skim-support \
		--with-qt-includes=${MODQT_INCDIR} \
		--with-qt-libraries=${MODQT_LIBDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		UIC_PATH=${MODQT_UIC} \
		QTDIR=${MODQT_QTDIR}

.include <bsd.port.mk>
