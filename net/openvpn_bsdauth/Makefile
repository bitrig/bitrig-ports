# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:50 espie Exp $

BROKEN = 	needs work on bitrig

COMMENT =	BSD Auth helper program for OpenVPN

DISTNAME =	openvpn_bsdauth-7
REVISION=	1
CATEGORIES =	net
HOMEPAGE =	http://www.wormhole.hu/~ice/openvpn_bsdauth/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c

MASTER_SITES =	${HOMEPAGE}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/openvpn

FAKE_FLAGS =	BINDIR=${PREFIX}/libexec MANDIR=${PREFIX}/man/man

pre-configure:
	@perl -pi -e 's#!!PREFIX!!#${PREFIX}#g' ${WRKSRC}/openvpn_bsdauth.8

.include <bsd.port.mk>
