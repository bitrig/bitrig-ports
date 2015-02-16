# $OpenBSD: Makefile,v 1.5 2015/02/16 22:57:10 naddy Exp $

COMMENT=	output characters or lines at random intervals

DISTNAME=	randtype-1.13
REVISION=	0
CATEGORIES=	misc

HOMEPAGE=	http://bjk.sourceforge.net/randtype/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bjk/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c z

NO_TEST=	Yes

MAKE_FLAGS =	CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/randtype ${PREFIX}/bin
	gunzip ${WRKSRC}/randtype.1.gz
	${INSTALL_MAN} ${WRKSRC}/randtype.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
