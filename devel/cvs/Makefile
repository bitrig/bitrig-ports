COMMENT=		CVS from OpenBSD base

DISTNAME=		cvs-1.11.1p1
EXTRACT_SUFX=		.tgz
CATEGORIES=		devel

HOMEPAGE=		https://www.bitrig.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	c crypto gssapi krb5 z

MASTER_SITES=	https://www.bitrig.org/pub/distfiles/

NO_REGRESS=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}" PREFIX="${LOCALBASE}"

.include <bsd.port.mk>
