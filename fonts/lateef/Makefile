# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Unicode Arabic font
DISTNAME =		LateefRegOT_1.001
PKGNAME =		lateef-1.001
CATEGORIES =		fonts

HOMEPAGE =		http://scripts.sil.org/Lateef/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/lateef
DOCDIR =		${PREFIX}/share/doc/lateef

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
