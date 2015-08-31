# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			0.7.0
COMMENT =		Quality fonts for X applications
DISTNAME =		cm-unicode-${V}-ttf
PKGNAME =		cm-unicode-${V}
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		fonts

HOMEPAGE =		http://cm-unicode.sourceforge.net/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cm-unicode/}

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}
FONTDIR =		${PREFIX}/share/fonts/cm-unicode
DOCDIR =		${PREFIX}/share/doc/cm-unicode

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{Changes,FAQ,*.txt,README} ${DOCDIR}

.include <bsd.port.mk>
