# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		fonts from Huertatipografica
PKGNAME =		huertatipografica-fonts-1.001
CATEGORIES =		fonts

.for font in \
			23 24 45 48

DISTFILES +=		${font}${EXTRACT_SUFX}
.endfor

HOMEPAGE =		http://www.huertatipografica.com/

# OFL1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://huertatipografica.com/free_download/

EXTRACT_SUFX =		.zip

DIST_SUBDIR =		huertatipografica-fonts

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/huertatipografica
DOCDIR =		${PREFIX}/share/doc/huertatipografica

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/{*.otf,*.ttf} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/OFL.txt ${DOCDIR}

.include <bsd.port.mk>
