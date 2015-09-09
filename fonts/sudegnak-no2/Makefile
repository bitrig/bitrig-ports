# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			015
COMMENT =		Decorative OpenType and TrueType font
DISTNAME =		SudegnakNo2_${V}
PKGNAME =		sudegnak-no2-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://www.glukfonts.pl/font.php?font=SudegnakNo2

# OFL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.glukfonts.pl/fontdl/f150822/font/SudegnakNo2/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/sudegnak-no2
DOCDIR =		${PREFIX}/share/doc/sudegnak-no2

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/{*.ttf,*.otf} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
