# $OpenBSD: Makefile,v 1.8 2014/10/20 01:57:52 bcallah Exp $

COMMENT =	scientific plotting and graphing package
MODPY_EGG_VERSION =	1.22
DISTNAME =	veusz-${MODPY_EGG_VERSION}
REVISION =	1
CATEGORIES =	math graphics

HOMEPAGE =	http://home.gna.org/veusz/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += lib/qt4/QtGui lib/qt4/QtXml m pthread ${MODPY_WANTLIB}
WANTLIB += c++ c++abi

MASTER_SITES =	http://download.gna.org/veusz/

MODULES =	lang/python \
		x11/qt4

BUILD_DEPENDS =	math/py-numpy \
		x11/py-qt4

RUN_DEPENDS =	math/py-numpy \
		x11/py-qt4

# Veusz must be installed for the tests to work!
# Otherwise, complains that veusz.compat cannot be found and exits.
do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runselftest.py

.include <bsd.port.mk>
