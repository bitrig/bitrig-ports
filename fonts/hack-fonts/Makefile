# $OpenBSD: Makefile,v 1.4 2016/01/22 00:54:50 mmcc Exp $

PKG_ARCH =		*

COMMENT =		typeface designed for source code

V =			2.019
DISTNAME =		Hack-v${V:S/./_/}-otf
PKGNAME =		hack-fonts-$V
CATEGORIES =		fonts
HOMEPAGE =		http://sourcefoundry.org/hack/

MAINTAINER =		Michael McConville <mmcco@mykolab.com>

# SIL Open Font License v1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/chrissimpkins/Hack/releases/download/v$V/

WRKDIST =		${WRKDIR}

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/Hack/
	${INSTALL_DATA} ${WRKSRC}/*.otf ${PREFIX}/share/fonts/Hack/

.include <bsd.port.mk>
