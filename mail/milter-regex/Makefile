# $OpenBSD: Makefile,v 1.26 2013/03/11 11:23:51 espie Exp $

COMMENT=	sendmail milter plugin for regular expression filtering

DISTNAME=	milter-regex-1.9
REVISION=	0
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/milter-regex.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pthread milter

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		mail/sendmail

NO_TEST=	Yes

do-configure:
	@perl -pi -e 's,/etc/mi,${SYSCONFDIR}/mi,g' ${WRKSRC}/milter-regex.{8,c}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-regex ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-regex.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
