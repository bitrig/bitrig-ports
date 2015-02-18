# $OpenBSD: Makefile,v 1.21 2014/01/23 18:30:57 espie Exp $

COMMENT=	simple and performant DNS server

VERSION=	1.4.16
DISTNAME=	maradns-${VERSION}
CATEGORIES=	net
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.maradns.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c pthread

MASTER_SITES=	http://maradns.samiam.org/download/1.4/

MAKE_FLAGS=	CC="${CC}" FLAGS="${CFLAGS} -D_THREAD_SAFE -pthread"

USE_GROFF =	Yes
NO_TEST=	Yes

post-configure:
	@find ${WRKSRC} -type f | xargs perl -pi -e "s,/etc,${SYSCONFDIR},g"
	@perl -pi -e "s, = 99, = 537," ${WRKSRC}/doc/en/examples/ex*

post-install:
	@chmod a+r ${PREFIX}/share/doc/maradns/source/maraconf.ej
	@mv ${PREFIX}/share/doc/maradns/examples \
		${PREFIX}/share/examples/maradns

.include <bsd.port.mk>
