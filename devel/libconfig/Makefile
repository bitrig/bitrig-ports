# $OpenBSD: Makefile,v 1.14 2015/06/04 05:26:17 ajacoutot Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.5

SHARED_LIBS +=  config               10.0     # 11.0
SHARED_LIBS +=  config++             10.0     # 11.0

CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		http://www.hyperrealm.com/libconfig/libconfig.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m
WANTLIB += c++ c++abi pthread

MASTER_SITES=		http://www.hyperrealm.com/libconfig/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/aux-build

TEST_TARGET =		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.c \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c++/*.cpp \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.cfg \
		${PREFIX}/share/examples/libconfig

.include <bsd.port.mk>
