# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Versatile Mozilla font for screen, print and the Web
DISTNAME =		clearsans-1.00
CATEGORIES =		fonts

HOMEPAGE =		https://01.org/clear-sans/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://01.org/sites/default/files/downloads/clear-sans/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/clearsans
DOCDIR =		${PREFIX}/share/doc/clearsans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/{EOT,SVG,TTF,WOFF}/* ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/LICENSE-2.0.txt ${DOCDIR}

.include <bsd.port.mk>
