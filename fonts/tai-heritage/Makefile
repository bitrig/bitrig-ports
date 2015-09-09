# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Font reflecting handwritten Tai Viet script
DISTNAME =		TaiHeritagePro2_5
PKGNAME =		tai-heritage-2.500
CATEGORIES =		fonts
HOMEPAGE =		http://scripts.sil.org/TaiHeritage/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/TaiHeritagePro-2.500
FONTDIR =		${PREFIX}/share/fonts/tai-heritage
DOCDIR =		${PREFIX}/share/doc/tai-heritage

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/documentation/*.txt ${DOCDIR}

.include <bsd.port.mk>
