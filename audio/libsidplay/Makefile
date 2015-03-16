# $OpenBSD: Makefile,v 1.14 2015/03/16 18:07:36 naddy Exp $

COMMENT=	C64 music player and SID chip emulator library

DISTNAME=	libsidplay-1.36.57
REVISION=	6
CATEGORIES=	audio
SHARED_LIBS +=	sidplay              2.0      # .1.3

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		m
WANTLIB +=		c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_OPENBSD}
EXTRACT_SUFX=	.tgz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV+=		sid_cv_have_ios_binary="yes"
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--enable-optfixpoint --enable-optendian
.endif

.include <bsd.port.mk>
