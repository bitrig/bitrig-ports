# $OpenBSD: Makefile,v 1.17 2015/11/06 20:37:34 sthen Exp $

COMMENT=	provide fingerprint authentication

DISTNAME=	login_fingerprint-1.2
REVISION =	5
CATEGORIES=    	sysutils

MASTER_SITES=	http://blade2k.humppa.hu/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto freetype fprint>=1 MagickCore-6.Q16 \
			MagickWand-6.Q16 usb-1.0 pthread

LIB_DEPENDS=		security/libfprint>=0.4.0 \
			graphics/ImageMagick

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/login_fingerprint

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		DOCDIR=${PREFIX}/share/doc/login_fingerprint \
		MANDIR=${PREFIX}/man/man

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_fingerprint.8

.include <bsd.port.mk>
