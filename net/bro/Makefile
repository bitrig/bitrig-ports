# $OpenBSD: Makefile,v 1.11 2015/03/16 18:07:51 naddy Exp $

BROKEN= 	needs work on bitrig

COMMENT=	highly flexible sniffer/NIDS

V=		1.4
DISTNAME=	bro-${V}-release
PKGNAME=	bro-${V}

REVISION=	4

SHARED_LIBS= 	broccoli	0.0	# .2.0

CATEGORIES=	net security

HOMEPAGE=	http://www.bro-ids.org/

# BSD
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB=	c crypto m pcap pthread ssl termcap z GeoIP>=5 magic>=1
WANTLIB +=	c++ c++abi

MASTER_SITES=	ftp://bro-ids.org/

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
