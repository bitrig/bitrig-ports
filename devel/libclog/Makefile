# $OpenBSD: Makefile,v 1.22 2015/03/16 18:07:41 naddy Exp $

COMMENT=		configurable logging library

DISTNAME=		clog-0.6.4
PKGNAME=		lib${DISTNAME}
REVISION=		0
CATEGORIES=		devel
SHARED_LIBS=		clog 1.6
REVISION=		0

HOMEPAGE=		http://opensource.conformal.com/wiki/Copious_Logger
MASTER_SITES=		http://opensource.conformal.com/snapshots/clog/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

do-configure:
	printf "major=${LIBclog_VERSION:R}\nminor=${LIBclog_VERSION:E}\n" \
		> ${WRKSRC}/shlib_version

.include <bsd.port.mk>
