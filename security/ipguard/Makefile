# $OpenBSD: Makefile,v 1.14 2014/07/22 10:55:41 ajacoutot Exp $

COMMENT =	protect LAN IP address space by ARP spoofing

DISTNAME =	ipguard-1.04
REVISION =	0
CATEGORIES =	security

HOMEPAGE =	http://ipguard.deep.perm.ru/
MASTER_SITES =	${HOMEPAGE}files/

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MAKE_FLAGS=    CC="${CC}"

WANTLIB =	c pcap lib/libnet-1.1/net=11

LIB_DEPENDS =	libnet->=1.1.2.1p0,<1.2:net/libnet/1.1

NO_TEST =	Yes

.include <bsd.port.mk>
