# $OpenBSD: Makefile,v 1.5 2013/04/22 06:49:19 jasper Exp $

COMMENT =	language for typesetting graphs

DISTNAME =	grap-1.44
REVISION =	0
CATEGORIES =	textproc graphics

HOMEPAGE =	http://lunabase.org/~faber/Vault/software/grap/

MAINTAINER =	Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${HOMEPAGE}
WANTLIB =		c m
WANTLIB +=		c++ c++abi pthread
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
