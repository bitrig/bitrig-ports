# $OpenBSD: Makefile,v 1.13 2015/05/22 11:31:12 ajacoutot Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.4.9
REVISION=		0

SHARED_LIBS +=  config               9.2      # 10.3
SHARED_LIBS +=  config++             9.2      # 10.3

CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		http://www.hyperrealm.com/libconfig/libconfig.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.hyperrealm.com/libconfig/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/aux-build

WANTLIB += m
WANTLIB += c++ c++abi pthread

TEST_TARGET = test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.c \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c++/*.cpp \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.cfg \
		${PREFIX}/share/examples/libconfig

.include <bsd.port.mk>
