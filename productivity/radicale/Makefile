# $OpenBSD: Makefile,v 1.27 2016/01/17 23:08:18 sthen Exp $

COMMENT =	simple CalDAV calendar server

MODPY_EGG_VERSION = 1.1.1
DISTNAME =	Radicale-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	productivity net

HOMEPAGE =	http://radicale.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	security/py-passlib

NO_TEST =	Yes
SUBST_VARS +=	VARBASE

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/radicale/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radicale
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radicale
	cd ${WRKSRC}; ${INSTALL_DATA} COPYING NEWS.rst README \
	    ${PREFIX}/share/doc/radicale/
	${SUBST_DATA} ${WRKSRC}/config \
	    ${PREFIX}/share/examples/radicale/config
	${INSTALL_DATA} ${WRKSRC}/logging \
	    ${PREFIX}/share/examples/radicale/logging
	touch ${PREFIX}/share/examples/radicale/log

.include <bsd.port.mk>
