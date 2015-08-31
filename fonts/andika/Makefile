# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			5.000
COMMENT =		Clear sans serif, Unicode-compliant font
DISTNAME =		Andika-${V}
PKGNAME =		andika-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://scripts.sil.org/Andika/

MAINTAINER =		George Rosamond <george@nycbug.org>

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/andika
DOCDIR =		${PREFIX}/share/doc/andika

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
