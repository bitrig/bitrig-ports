# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $


COMMENT =		Serif font designed for digital readability
DISTNAME =		bitter-ht-regular-italic-bold-bold-italic
PKGNAME =		bitter-20141110
CATEGORIES =		fonts

HOMEPAGE =		http://www.huertatipografica.com/fonts/bitter-ht

# OFL1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/bitter
DOCDIR =		${PREFIX}/share/doc/bitter

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
