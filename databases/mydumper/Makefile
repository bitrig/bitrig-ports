# $OpenBSD: Makefile,v 1.9 2016/03/03 10:01:09 giovanni Exp $$

BROKEN = 	needs work on bitrig

COMMENT =	utility for quick MySQL dumping

V =		0.9.1
DISTNAME =	mydumper-${V}
CATEGORIES =	databases

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto glib-2.0 gthread-2.0 m mysqlclient_r
WANTLIB +=	pcre pthread ssl z

MASTER_SITES =	https://launchpad.net/mydumper/${V:R}/${V}/+download/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mariadb \
		devel/glib2 \
		devel/pcre

NO_TEST =	Yes

.include <bsd.port.mk>
