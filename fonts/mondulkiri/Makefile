# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Unicode fonts for the Khmer script
DISTNAME =		Mondulkiri-7.100
PKGNAME =		mondulkiri-7.100
CATEGORIES =		fonts

HOMEPAGE =		http://scripts.sil.org/Mondulkiri/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/Mondulkiri-7.100
FONTDIR =		${PREFIX}/share/fonts/mondulkiri
DOCDIR =		${PREFIX}/share/doc/mondulkiri

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
