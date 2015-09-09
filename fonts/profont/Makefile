# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Readable monospaced TrueType for programming
DISTNAME =		ProFontWinTweaked
PKGNAME =		profont-201401
CATEGORIES =		fonts

HOMEPAGE =		http://tobiasjung.name/profont/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/profont
DOCDIR =		${PREFIX}/share/doc/profont

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{readme.txt,LICENSE} ${DOCDIR}

.include <bsd.port.mk>
