# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			2.2
COMMENT =		TrueType Korean fonts
DISTNAME =		baekmuk-ttf-${V}
PKGNAME =		baekmuk-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://kldp.net/projects/baekmuk/

# Free license with attribution
# see /usr/local/share/doc/baekmuk/COPYRIGHT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.nycbug.org/pub/distfiles/

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/baekmuk
DOCDIR =		${PREFIX}/share/doc/baekmuk

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/ttf/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{COPYRIGHT,README} ${DOCDIR}

.include <bsd.port.mk>
