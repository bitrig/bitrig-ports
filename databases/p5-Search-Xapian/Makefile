# $OpenBSD: Makefile,v 1.13 2013/11/11 21:25:56 sthen Exp $

COMMENT=		perl bindings for the xapian search library

V=			1.2.15
DISTNAME=		Search-Xapian-${V}.0
CATEGORIES=		databases
REVISION=		0
MODULES=		cpan

HOMEPAGE=		http://xapian.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m xapian
WANTLIB+=		c++ c++abi pthread

MASTER_SITES=		http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core>=${V}

.include <bsd.port.mk>
