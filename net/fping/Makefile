# $OpenBSD: Makefile,v 1.38 2016/01/15 19:57:24 sthen Exp $

COMMENT=	quickly ping N hosts w/o flooding the network

DISTNAME=	fping-3.13

CATEGORIES=	net

HOMEPAGE=	http://fping.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=	http://fping.org/dist/

CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--bindir=${PREFIX}/sbin \
		--enable-ipv6

.include <bsd.port.mk>
