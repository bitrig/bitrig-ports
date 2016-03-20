# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:07 naddy Exp $

COMMENT=	talk to modem devices connected via serial port

DISTNAME=	Device-Modem-1.56
REVISION=	0
CATEGORIES=	comms

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	comms/p5-Device-SerialPort>=1

.include <bsd.port.mk>
