# $OpenBSD: Makefile,v 1.2 2015/09/29 10:52:29 sthen Exp $

COMMENT=		Python wrapper around the CZMQ zeromq bindings

MODPY_EGG_VERSION=	0.0.4
DISTNAME=		pyczmq-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
REVISION=		0

GH_COMMIT=		5d59f0452875b0bb5b9f865990d6faf6a04e12d3
GH_PROJECT=		pyczmq
GH_ACCOUNT=		zeromq

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/zeromq/pyczmq/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi \
			net/czmq

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
