# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		TrueType Commodore 64 fonts
DISTNAME =		petme
PKGNAME =		petme-2001102
CATEGORIES =		fonts
HOMEPAGE =		http://www.kreativekorp.com/software/fonts/c64.shtml

# see FreeLicense.txt, v1.2f
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://kreativekorp.com/swdownload/fonts/retro/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =	${PREFIX}/share/fonts/petme
DOCDIR =	${PREFIX}/share/doc/petme

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/FreeLicense.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}

.include <bsd.port.mk>
