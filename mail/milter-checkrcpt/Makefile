# $OpenBSD: Makefile,v 1.3 2013/03/11 11:23:51 espie Exp $

COMMENT=	sendmail milter plugin for recipient checking

DISTNAME=	milter-checkrcpt-0.3
REVISION=	0
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/milter-checkrcpt.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pthread milter

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-checkrcpt ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-checkrcpt.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
