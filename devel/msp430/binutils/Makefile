# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:12 espie Exp $

BROKEN= 		needs work on bitrig

TOOL=			binutils
TOOL_V=			2.21.1a

REVISION=		1

GNU_TOOL=		Yes

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_TEST=		No

.include <bsd.port.mk>
