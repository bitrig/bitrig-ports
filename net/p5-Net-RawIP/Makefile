# $OpenBSD: Makefile,v 1.25 2014/06/14 23:25:42 sthen Exp $

BROKEN= 	needs work on bitrig

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	3
CATEGORIES=	net

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
