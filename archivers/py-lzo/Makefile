# $OpenBSD: Makefile,v 1.9 2015/04/21 18:40:20 sthen Exp $

COMMENT =		Python implementation of the LZO library

MODPY_EGG_VERSION =	1.08
DISTNAME =		python-lzo-${MODPY_EGG_VERSION}
PKGNAME =		py-lzo-${MODPY_EGG_VERSION}
REVISION =		6
CATEGORIES =		archivers

HOMEPAGE =		http://www.oberhumer.com/opensource/lzo/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += lzo pthread

MASTER_SITES =	http://www.oberhumer.com/opensource/lzo/download/LZO-v1/

MODULES =	lang/python

LIB_DEPENDS =	archivers/lzo

MAKE_ENV +=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

EXAMPLEDIR =	${PREFIX}/share/examples/py-lzo

pre-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/setup.py

pre-install:
		${INSTALL_DATA_DIR} ${EXAMPLEDIR}
		${INSTALL_DATA} ${WRKSRC}/tests/*.py ${EXAMPLEDIR}

do-test:
		@cd ${WRKSRC} && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
