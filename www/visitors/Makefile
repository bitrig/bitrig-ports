# $OpenBSD: Makefile,v 1.4 2013/03/11 11:44:50 espie Exp $

COMMENT=	very fast web log analyzer

DISTNAME=	visitors-0.7
REVISION=	1
CATEGORIES=	www sysutils

# GPL
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=	c

HOMEPAGE=	http://www.hping.org/visitors/
MASTER_SITES=	${HOMEPAGE}

WRKDIST=${WRKDIR}/${DISTNAME:S/-/_/}

NO_TEST=	Yes

MAKE_ENV+=	DEBUG=''

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/visitors 	${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/visitors
	${INSTALL_DATA} ${WRKSRC}/doc.html ${PREFIX}/share/doc/visitors/

.include <bsd.port.mk>
