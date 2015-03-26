# $OpenBSD: Makefile,v 1.7 2013/03/11 11:37:55 espie Exp $

COMMENT=	to-do list manager

DISTNAME=	tdl-1.5.2
REVISION=	3
CATEGORIES=	productivity

MASTER_SITES=	http://www.rpcurnow.force9.co.uk/tdl/

HOMEPAGE=	http://www.rc0.org.uk/tdl/

WANTLIB=	c readline termcap
LIB_DEPENDS=	devel/readline

# GPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= simple

CONFIGURE_ENV=  CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"

USE_GROFF=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
