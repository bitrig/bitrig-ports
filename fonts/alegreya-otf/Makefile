# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Full family of humanist OpenType fonts
DISTNAME =		alegreya-sans-ht-full-pack-otf
PKGNAME =		alegreya-otf-1.001
CATEGORIES =		fonts

HOMEPAGE =		http://www.huertatipografica.com/fonts/alegreya-sans-ht/
MAINTAINER =		George Rosamond <george@nycbug.org>

# OFL1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/alegreya-otf
DOCDIR =		${PREFIX}/share/doc/alegreya-otf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.md ${DOCDIR}

.include <bsd.port.mk>
