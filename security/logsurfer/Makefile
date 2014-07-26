# $OpenBSD: Makefile,v 1.22 2013/03/11 11:41:25 espie Exp $

COMMENT=	processes logfiles and perform certain actions

DISTNAME=	logsurfer-1.8
REVISION=	0
CATEGORIES=	security

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

HOMEPAGE=	http://www.crypt.gen.nz/logsurfer/

MASTER_SITES=	http://kerryt.orcon.net.nz/ \
		http://www.crypt.gen.nz/logsurfer/

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

NOT_FOR_ARCHS=	${LP64_ARCHS}

.include <bsd.port.mk>
