COMMENT=		CVS from OpenBSD base

DISTNAME=		cvs-1.11.1p2
REVISION=		2
EXTRACT_SUFX=		.tgz
CATEGORIES=		devel

HOMEPAGE=		https://www.bitrig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c crypto z

MASTER_SITES=	https://www.bitrig.org/pub/distfiles/

NO_TEST=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}" PREFIX="${LOCALBASE}"

.include <bsd.port.mk>
