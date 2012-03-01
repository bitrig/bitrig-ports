COMMENT=		GNU texinfo

DISTNAME=		texinfo-4.8
EXTRACT_SUFX=		.tgz
CATEGORIES=		textproc

HOMEPAGE=		http://www.bitrig.org/
MAINTAINER=		Marco Peereboom <marco@bitrig.org>

# GPL2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	c

MASTER_SITES=	http://www.bitrig.org/files/

NO_REGRESS=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}" PREFIX="${LOCALBASE}"

.include <bsd.port.mk>
