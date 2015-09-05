# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			2.100
COMMENT =		Arabic Unicode font
DISTNAME =		Scheherazade-${V}
PKGNAME =		scheherazade-${V}
CATEGORIES =		fonts
HOMEPAGE =		http://scripts.sil.org/Scheherazade/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/scheherazade
DOCDIR =		${PREFIX}/share/doc/scheherazade

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
