# $OpenBSD: Makefile,v 1.16 2016/01/06 17:01:54 ajacoutot Exp $

COMMENT=		plugin to support use of Cheetah templates

MODPY_EGG_VERSION=	1.0
DISTNAME=		TurboCheetah-${MODPY_EGG_VERSION}
PKGNAME=		py-turbocheetah-${MODPY_EGG_VERSION}
REVISION =		5

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
RUN_DEPENDS=		devel/py-cheetah
TEST_DEPENDS=	devel/py-cheetah \
			devel/py-nose

MODPY_SETUPTOOLS=	Yes

do-test:
	cd ${WRKSRC} && NOSE_WHERE=turbocheetah/tests nosetests

.include <bsd.port.mk>
