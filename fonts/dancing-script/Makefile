# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			1.2
COMMENT =		Lively casual script
DISTNAME =		dancing-script-v${V}
PKGNAME =		dancing-script-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://www.impallari.com/dancing

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.impallari.com/media/releases/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/Dancing\ Script\ v1.2
FONTDIR =		${PREFIX}/share/fonts/dancing-script
DOCDIR =		${PREFIX}/share/doc/dancing-script

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
