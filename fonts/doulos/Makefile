# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Unicode-based font for Roman and Cyrillic
DISTNAME =		DoulosSIL-5.000
PKGNAME =		doulos-5.000

CATEGORIES =		fonts

HOMEPAGE =		http://scripts.sil.org/DoulosSIL/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
FONTDIR =		${PREFIX}/share/fonts/doulos
DOCDIR =		${PREFIX}/share/doc/doulos

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
