# $OpenBSD: Makefile,v 1.21 2014/11/08 23:22:17 benoit Exp $

COMMENT=		configurable logging library

DISTNAME=		clog-0.6.4
PKGNAME=		lib${DISTNAME}
REVISION=		0
CATEGORIES=		devel
SHARED_LIBS=		clog 1.6

HOMEPAGE=		http://opensource.conformal.com/wiki/Copious_Logger
MASTER_SITES=		http://opensource.conformal.com/snapshots/clog/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

do-configure:
	printf "major=${LIBclog_VERSION:R}\nminor=${LIBclog_VERSION:E}\n" \
		> ${WRKSRC}/shlib_version

.include <bsd.port.mk>
