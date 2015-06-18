# $OpenBSD: Makefile,v 1.12 2015/06/18 07:25:44 bentley Exp $

BROKEN= 	needs work on bitrig

COMMENT=	highly flexible sniffer/NIDS

V=		1.4
DISTNAME=	bro-${V}-release
PKGNAME=	bro-${V}

REVISION=	4

SHARED_LIBS= 	broccoli	0.0	# .2.0

CATEGORIES=	net security

HOMEPAGE=	https://www.bro.org/

# BSD
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB=	c crypto m pcap pthread ssl termcap z GeoIP>=5 magic>=1
WANTLIB +=	c++ c++abi

MASTER_SITES=	https://www.bro.org/downloads/archive/

LIB_DEPENDS=	net/GeoIP \
		devel/libmagic

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST} \
				${WRKDIST}/aux/binpac \
				${WRKDIST}/aux/broccoli

WRKDIST=	${WRKDIR}/bro-${V}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bro

NO_TEST=	Yes

.include <bsd.port.mk>
