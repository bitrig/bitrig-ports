# $OpenBSD: Makefile,v 1.6 2014/11/14 08:20:26 benoit Exp $

COMMENT =	language for typesetting graphs

DISTNAME =	grap-1.45
CATEGORIES =	textproc graphics

HOMEPAGE =	http://lunabase.org/~faber/Vault/software/grap/

# BSD
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${HOMEPAGE}
WANTLIB =		c m
WANTLIB +=		c++ c++abi pthread
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
