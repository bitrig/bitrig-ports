# $OpenBSD: Makefile,v 1.8 2015/11/21 18:21:32 dcoppa Exp $

COMMENT =	Context Free Design Grammar

VERSION =	2.2.2
DISTNAME =	ContextFreeSource${VERSION}
PKGNAME =	cfdg-${VERSION}
REVISION =	1

CATEGORIES =	graphics

HOMEPAGE =	http://www.contextfreeart.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m png z
WANTLIB +=	c++ c++abi pthread
LIB_DEPENDS =	graphics/png

MASTER_SITES =	http://www.contextfreeart.org/download/
EXTRACT_SUFX =	.tgz

USE_GMAKE =	Yes
MAKE_FLAGS=	LINK.o=${CXX}
MODULES=       gcc4
MODGCC4_ARCHS = *
MODGCC4_LANGS = c c++

# ????
WRKDIST =	${WRKDIR}/${DISTNAME}.tgz/

EXAMPLEDIR =	${PREFIX}/share/examples/cfdg

MAKE_ENV +=	CPPFLAGS="${CFLAGS} -I$(LOCALBASE)/include"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cfdg ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/input
	${INSTALL_DATA} ${WRKSRC}/README.txt ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/input/* ${EXAMPLEDIR}/input

NO_TEST =	Yes

.include <bsd.port.mk>
