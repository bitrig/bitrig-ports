# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			1.4
COMMENT =		OpenType bold, condensed script
DISTNAME =		lobster-font-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://www.impallari.com/lobster

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.impallari.com/media/releases/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/Lobster\ 1.4
FONTDIR =		${PREFIX}/share/fonts/lobster-font
DOCDIR =		${PREFIX}/share/doc/lobster-font

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
