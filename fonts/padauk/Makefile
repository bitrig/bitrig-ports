# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $


V =			2.8
COMMENT =		Myanmar character font with Unicode support
DISTNAME =		padauk-${V}
CATEGORIES =		fonts
HOMEPAGE =		http://scripts.sil.org/Padauk/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/padauk-2.80/
FONTDIR =		${PREFIX}/share/fonts/padauk
DOCDIR =		${PREFIX}/share/doc/padauk

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
