# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Brutal TrueType death metal font
DISTNAME =		MB-Real_Grinder_Font
PKGNAME =		mb-real-grinder-201103
CATEGORIES =		fonts

HOMEPAGE =		http://modblackmoon.com/fonts.html
MAINTAINER =		George Rosamond <george@nycbug.org>

# Freeware with credit for commercial use
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://modblackmoon.com/fonts/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/mb-real-grinder
DOCDIR =		${PREFIX}/share/doc/mb-real-grinder

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
