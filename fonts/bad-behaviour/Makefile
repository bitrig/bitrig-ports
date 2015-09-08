# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

#V =			1_1
COMMENT =		Detailed blocky font with scratches
DISTNAME =		Bad_Behaviour
PKGNAME =		bad-behaviour-20150805
CATEGORIES =		fonts

HOMEPAGE =		http://modblackmoon.com/fonts.html

# Freeware with no modify
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://modblackmoon.com/fonts/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/bad-behaviour
DOCDIR =		${PREFIX}/share/doc/bad-behaviour

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
