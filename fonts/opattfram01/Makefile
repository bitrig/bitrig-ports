# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Elements for creating frames and patterns in OTF
DISTNAME =		Opattfram01
PKGNAME =		opattfram01-0.9
CATEGORIES =		fonts

HOMEPAGE =		http://www.glukfonts.pl/font.php?font=Opattfram01

# OFL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.glukfonts.pl/fontdl/f150822//font/opattfram01/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/opattfram01
DOCDIR =		${PREFIX}/share/doc/opattfram01

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
