# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Noto Sans Armenian font
DISTNAME =		NotoSansArmenian-hinted
PKGNAME =		noto-sans-armenian-20150615
CATEGORIES =		fonts

HOMEPAGE =		http://www.google.com/get/noto/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://noto-website.storage.googleapis.com/pkgs/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/noto-sans-armenian
DOCDIR =		${PREFIX}/share/doc/noto-sans-armenian

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/LICENSE.txt ${DOCDIR}

.include <bsd.port.mk>
