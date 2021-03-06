# $OpenBSD: Makefile,v 1.32 2016/03/16 21:19:39 naddy Exp $

COMMENT=	set of libraries and utilities to access smart cards

DISTNAME=	opensc-0.15.0
REVISION=	1
CATEGORIES=	security

SHARED_LIBS +=  opensc 4.0	# 3.0
SHARED_LIBS +=	smm-local 0.0	# 3.0

HOMEPAGE=	https://github.com/OpenSC/OpenSC/wiki

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opensc/}

WANTLIB=	c crypto ncurses pthread readline z

BUILD_DEPENDS=	devel/readline \
		textproc/docbook-xsl \
		security/pcsc-lite
RUN_DEPENDS=	security/ccid

USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.67
CONFIGURE_ARGS=	--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--enable-sm \
		--with-xsl-stylesheetsdir=${LOCALBASE}/share/xsl/docbook
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/PCSC -DOPENSSL_NO_STATIC_ENGINE"

FAKE_FLAGS=	mandir="${PREFIX}/man/" \
		sysconfdir="${PREFIX}/share/examples/opensc/"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/src/libopensc/libopensc.pc \
		${PREFIX}/lib/pkgconfig/

.include <bsd.port.mk>
