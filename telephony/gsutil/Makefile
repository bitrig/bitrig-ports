# $OpenBSD: Makefile,v 1.4 2015/12/28 08:46:49 jasper Exp $

COMMENT =		dump/restore Grandstream device configurations

DISTNAME =		gsutil-3.1

CATEGORIES =		telephony

HOMEPAGE =		http://www.pkts.ca/gsutil.shtml

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.pkts.ca/

RUN_DEPENDS =		www/p5-libwww \
			www/p5-HTML-Form

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/gsutil ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gsutil
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/gsutil

.include <bsd.port.mk>
