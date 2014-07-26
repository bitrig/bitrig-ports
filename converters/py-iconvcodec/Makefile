# $OpenBSD: Makefile,v 1.15 2014/06/21 11:29:06 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	universal unicode codec using iconv for Python

DISTNAME=	iconvcodec-1.1.2
PKGNAME=	py-${DISTNAME}
REVISION =	8
CATEGORIES=	converters

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

MODPY_DISTUTILS_BUILDARGS=	--with-libiconv=${LOCALBASE}

NO_TEST=	Yes

MODULES=	lang/python converters/libiconv

WANTLIB=	${MODPY_WANTLIB}

.include <bsd.port.mk>
