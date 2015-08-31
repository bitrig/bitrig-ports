# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $
# GH v mirror box.

COMMENT =		Full family of humanist TrueType fonts
DISTNAME =		alegreya-sans-ht-full-pack-ttf
PKGNAME =		alegreya-ttf-1.001
CATEGORIES =		fonts

HOMEPAGE =		http://www.huertatipografica.com/fonts/alegreya-sans-ht/
MAINTAINER =		George Rosamond <george@nycbug.org>

# OFL1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/alegreya-ttf
DOCDIR =		${PREFIX}/share/doc/alegreya-ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.md ${DOCDIR}

.include <bsd.port.mk>
