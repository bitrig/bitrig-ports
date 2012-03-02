COMMENT=		Concurrent Versions System

DISTNAME=		cvs-1.11.1p1
EXTRACT_SUFX=		.tgz
CATEGORIES=		devel

HOMEPAGE=		http://www.bitrig.org/
MAINTAINER=		Lawrence Teo <lteo@bitrig.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	c crypto gssapi krb5 z

MASTER_SITES=	http://www.bitrig.org/files/

NO_REGRESS=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}" PREFIX="${LOCALBASE}"

.include <bsd.port.mk>
