# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			1.10
COMMENT =		Gnome's Bitstream Vera TrueType font
DISTNAME =		ttf-bitstream-vera-${V}
PKGNAME =		bitstream-vera-${V}
CATEGORIES =		fonts

HOMEPAGE =		https://www.gnome.org/fonts/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/${V}/

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
FONTDIR =		${PREFIX}/share/fonts/bitstream-vera
DOCDIR =		${PREFIX}/share/doc/bitstream-vera

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.TXT ${DOCDIR}

.include <bsd.port.mk>
