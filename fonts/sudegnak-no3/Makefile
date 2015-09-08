# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			012
COMMENT =		Handwritten, cartoonish font
DISTNAME =		SudegnakNo3_${V}
PKGNAME =		sudegnak-no3-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://www.glukfonts.pl/font.php?font=SudegnakNo3

# OFL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.glukfonts.pl/fontdl/f150822/font/SudegnakNo3/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/sudegnak-no3
DOCDIR =		${PREFIX}/share/doc/sudegnak-no3

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
