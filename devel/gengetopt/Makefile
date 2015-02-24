# $OpenBSD: Makefile,v 1.1.1.1 2014/11/13 20:39:46 bcallah Exp $

BROKEN =	needs work on bitrig

V =		2.22.6
COMMENT =	command line parser for c programs
DISTNAME =	gengetopt-${V}
CATEGORIES =	devel

HOMEPAGE =	http://www.gnu.org/software/gengetopt/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =	${MASTER_SITE_GNU:=gengetopt/}

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
