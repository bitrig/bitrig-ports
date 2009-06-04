# $OpenBSD: Makefile,v 1.1.1.2 2009/06/04 08:04:28 benoit Exp $

COMMENT =		DNS toolkit for Python

MODPY_EGG_VERSION =	1.6.0
DISTNAME =		dnspython-${MODPY_EGG_VERSION}
PKGNAME =		py-dnspython-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		http://www.dnspython.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.dnspython.org/kits/${MODPY_EGG_VERSION}/

MODULES =		lang/python

NO_REGRESS =		Yes

pre-configure:
			${SUBST_CMD} ${WRKSRC}/tests/Makefile

post-install:
			${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-dnspython
			${INSTALL_DATA} ${WRKSRC}/examples/*.py \
				${PREFIX}/share/examples/py-dnspython

.include <bsd.port.mk>
