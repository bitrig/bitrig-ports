# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $


COMMENT =		batch USENET news reader
DISTNAME =		newsfish-1.2.6
CATEGORIES =		news
HOMEPAGE =		http://sourceforge.net/projects/newsfish/files/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=newsfish/}

WANTLIB +=		c

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/newsfish

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/{INSTALL,README,TODO,ChangeLog} ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKDIST}/newsfish ${PREFIX}/bin

.include <bsd.port.mk>
