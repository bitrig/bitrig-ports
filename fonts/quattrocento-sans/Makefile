# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			2.0
COMMENT =		Classic sans typeface to accompany Quattrocento Roman
DISTNAME =		quattrocento-sans-v${V}
PKGNAME =		quattrocento-sans-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://www.impallari.com/quattrocentosans/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.impallari.com/media/releases/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

#WRKDIST =		${WRKDIR}/Quattrocento\ v1.1
FONTDIR =		${PREFIX}/share/fonts/quattrocento-sans
DOCDIR =		${PREFIX}/share/doc/quattrocento-sans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
