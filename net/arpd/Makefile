# $OpenBSD: Makefile,v 1.18 2014/08/26 14:16:28 naddy Exp $

COMMENT=		ARP reply daemon

DISTNAME=		arpd-0.2
REVISION=		4
CATEGORIES=    		net

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap event dnet

MASTER_SITES=		http://www.citi.umich.edu/u/provos/honeyd/

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/arpd

LIB_DEPENDS=		net/libdnet

.include <bsd.port.mk>
