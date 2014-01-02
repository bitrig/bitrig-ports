# $OpenBSD: Makefile,v 1.26 2013/03/10 22:28:05 espie Exp $

COMMENT=	extract files from ARJ archives

DISTNAME=	unarj-2.65
CATEGORIES=	archivers
HOMEPAGE=	http://www.arjsoftware.com/
MASTER_SITES=	http://ak-various-projects.googlecode.com/files/
EXTRACT_SUFX=	.tgz

# Restrictive
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

WANTLIB=		c

MAKE_ENV=	CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unarj
	cd ${WRKSRC}; ${INSTALL_PROGRAM} unarj ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} unarj.txt technote.txt ${PREFIX}/share/doc/unarj

NO_TEST=	Yes

.include <bsd.port.mk>
