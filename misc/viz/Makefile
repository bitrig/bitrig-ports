# $OpenBSD: Makefile,v 1.17 2013/03/11 11:23:58 espie Exp $

COMMENT=	Convert invisible (binary) characters to a visible form

DISTNAME=	viz-1.1.1
REVISION=	1
CATEGORIES=	misc

EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

USE_GROFF =	Yes
NO_TEST=	Yes

CFLAGS+=	-D_SYS_ERRNO_H_

.include <bsd.port.mk>
