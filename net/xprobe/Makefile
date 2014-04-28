# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:58 espie Exp $

COMMENT=		ICMP active OS fingerprint scanner

DISTNAME=		xprobe2-0.3
REVISION=		1
CATEGORIES=    		net security

HOMEPAGE=		http://xprobe.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pcap
WANTLIB +=		c++ c++abi pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xprobe/}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=				\
	${WRKSRC}/cfg-scripts				\
	${WRKSRC}/libs-external/USI++/src/cfgaux

USE_GROFF=		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
