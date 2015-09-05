# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Unicode font for standardized Yi script
DISTNAME =		NuosuSIL2.1.1
PKGNAME =		nuosu-2.1.1
CATEGORIES =		fonts
HOMEPAGE =		http://scripts.sil.org/SILYI_home/


# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/NuosuSIL
FONTDIR =		${PREFIX}/share/fonts/nuosu
DOCDIR =		${PREFIX}/share/doc/nuosu

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
