# $OpenBSD: Makefile,v 1.9 2016/03/11 19:59:12 naddy Exp $

COMMENT=	intelligent phonetic input method library

V =		0.3.3
DISTNAME=	libchewing-$V
PKGNAME=	zh-libchewing-$V
REVISION =	2

SHARED_LIBS=	chewing	0.0	# .3.1

CATEGORIES=	chinese inputmethods

HOMEPAGE= 	http://chewing.im/

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://github.com/chewing/libchewing/releases/download/v$V/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
