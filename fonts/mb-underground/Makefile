# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Eroded and decayed TrueType font
DISTNAME =		MB_Underground_Font
PKGNAME =		mb-underground-201205
CATEGORIES =		fonts

HOMEPAGE =		http://modblackmoon.com/fonts.html

# Freeware with credit for commercial use
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://modblackmoon.com/fonts/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/mb-underground
DOCDIR =		${PREFIX}/share/doc/mb-underground

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
