# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:33 espie Exp $

COMMENT=	print ascii formatted tree of a directory structure

DISTNAME=	tree-0.61
REVISION =	4
CATEGORIES=	sysutils

HOMEPAGE=	http://spootnik.org/tree/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes
WANTLIB=	c

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
