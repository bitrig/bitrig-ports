# $OpenBSD: Makefile,v 1.18 2016/01/08 13:07:35 jasper Exp $

COMMENT=		implements an XML/HTML/XHTML markup safe string

MODPY_EGG_VERSION=	0.23
DISTNAME=		MarkupSafe-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		textproc


# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

WANTLIB+=		${MODPY_WANTLIB} pthread

MODPY_SETUPTOOLS= 	Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
