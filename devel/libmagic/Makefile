# $OpenBSD: Makefile,v 1.25 2015/09/17 13:30:23 sthen Exp $

COMMENT=	library to determine file type

# update devel/py-libmagic in sync with this
V=		5.25
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}
REVISION=	0

SHARED_LIBS +=  magic                4.2      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += z

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
