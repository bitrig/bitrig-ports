# $OpenBSD: Makefile,v 1.6 2016/02/27 12:37:51 jasper Exp $

COMMENT=		system to monitor and control processes

MODPY_EGG_VERSION=	3.2.1
DISTNAME=		supervisor-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		sysutils

HOMEPAGE=		http://supervisord.org/

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		www/py-meld3
TEST_DEPENDS=		devel/py-mock \
			www/py-meld3

SUBST_VARS+=		VARBASE

pre-configure:
	${SUBST_CMD} ${WRKSRC}/supervisor/skel/sample.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supervisor/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/supervisor/

.include <bsd.port.mk>
