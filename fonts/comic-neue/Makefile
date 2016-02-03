# $OpenBSD: Makefile,v 1.4 2015/09/25 12:50:07 sthen Exp $

PKG_ARCH =		*

COMMENT =		replacement for Comic Sans font

DISTNAME =		comic-neue-1.1
REVISION =		3

CATEGORIES =		fonts

HOMEPAGE =		http://comicneue.com/

# CC0 (public domain)
# http://creativecommons.org/publicdomain/zero/1.0/
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes

FONTDIR =		${PREFIX}/share/fonts/comic-neue
FCDIR =			${PREFIX}/share/comic-neue

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${FCDIR}
	${INSTALL_DATA} ${WRKSRC}/*ttf ${FONTDIR}
	${INSTALL_DATA} ${FILESDIR}/30-comic-sans-aliases.conf ${FCDIR}

.include <bsd.port.mk>
