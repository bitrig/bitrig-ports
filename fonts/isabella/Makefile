# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =		1.202
COMMENT =	Calligraphic font based on Isabella Breviary
DISTNAME =	Isabella-${V}
PKGNAME	=	isabella-${V}
EXTRACT_SUFX =	-ttf.zip
CATEGORIES =	fonts

HOMEPAGE =	http://www.thibault.org/fonts/isabella
MAINTAINER =	George Rosamond <george@nycbug.org>

# Dual OFL/LGPLv2
# See http://www.thibault.org/fonts/isabella/
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.thibault.org/fonts/isabella/

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/Isabella
FONTDIR =	${PREFIX}/share/fonts/isabella
DOCDIR =	${PREFIX}/share/doc/isabella

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/Isabella.* ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{*.txt,COPYING.LIB} ${DOCDIR}

.include <bsd.port.mk>
