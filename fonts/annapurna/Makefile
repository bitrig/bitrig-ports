# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Unicode-based font for Devanagari script
DISTNAME =		AnnapurnaSIL-1.200
PKGNAME =		annapurna-1.200
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/annapurna/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/annapurna/wp-content/uploads/sites/11/2015/04/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/annapurna
DOCDIR =		${PREFIX}/share/doc/annapurna

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/documentation/*.txt ${DOCDIR}

.include <bsd.port.mk>
