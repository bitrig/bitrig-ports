# $OpenBSD: Makefile,v 1.25 2015/08/01 08:46:34 dcoppa Exp $

COMMENT =		PHP client library for the Redis key-value database

DISTNAME =		Predis-1.0.3
PKGNAME =		${DISTNAME:S/^P/php-p/}
CATEGORIES =		www databases

HOMEPAGE =		http://wiki.github.com/nrk/predis

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://pear.nrk.io/get/
EXTRACT_SUFX =		.tgz

MODULES =		lang/php

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

PREFIX =	${VARBASE}/www
INSTDIR =		${PREFIX}/pear/lib/
SUBST_VARS =		INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}Predis
	cp -Rp ${WRKSRC}/src/* ${INSTDIR}Predis/
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
