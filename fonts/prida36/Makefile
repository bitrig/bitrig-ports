# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			057
COMMENT =		Decorative, serif all-capital font
DISTNAME =		Prida36_${V}
PKGNAME =		prida36-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://www.glukfonts.pl/font.php?font=Prida36

# OFL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.glukfonts.pl/fontdl/f150822/font/Prida36/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/prida36
DOCDIR =		${PREFIX}/share/doc/prida36

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/ttf/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
