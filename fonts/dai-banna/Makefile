# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Unicode font package for New Tai Lue characters
DISTNAME =		DaiBanna-2.200
PKGNAME =		dai-banna-2.200
CATEGORIES =		fonts

HOMEPAGE =		http://scripts.sil.org/DaiBannaSIL/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}
FONTDIR =		${PREFIX}/share/fonts/dai-banna
DOCDIR =		${PREFIX}/share/doc/dai-banna

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
