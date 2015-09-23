# $OpenBSD: Makefile,v 1.24 2015/09/23 13:27:28 sthen Exp $

COMMENT=	library and tools to program YubiKeys

DISTNAME=	ykpers-1.17.2

SHARED_LIBS +=	ykpers-1                  0.5 # 18.2

CATEGORIES=	sysutils security

HOMEPAGE=	http://yubico.github.io/yubikey-personalization/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c json-c pthread usb-1.0 yubikey

MASTER_SITES=	http://yubico.github.io/yubikey-personalization/releases/

LIB_DEPENDS=	devel/json-c \
		devel/libusb1>=1.0.9p1 \
		devel/libyubikey \

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
