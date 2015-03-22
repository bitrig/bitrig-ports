# $OpenBSD: Makefile,v 1.2 2013/03/11 11:23:55 espie Exp $

BROKEN = 		needs work on bitrig

COMMENT =		easy to use propositional logic solver based on MiniSAT

DISTNAME =		logic2cnf-0.7.2
REVISION =		1

CATEGORIES =		math lang

HOMEPAGE =		http://projects.cs.kent.ac.uk/projects/logic2cnf/trac/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m
WANTLIB +=		c++ c++abi

MASTER_SITES =		${HOMEPAGE}/raw-attachment/wiki/releases/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
