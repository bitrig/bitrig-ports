# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Sans serif, Unicode font for Nubian languages
DISTNAME =		SN1.0
PKGNAME =		sophia-nubian-1.0
CATEGORIES =		fonts

HOMEPAGE =		http://scripts.sil.org/SophiaNubian/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/SophiaNubian
FONTDIR =		${PREFIX}/share/fonts/sophia-nubian
DOCDIR =		${PREFIX}/share/doc/sophia-nubian

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
