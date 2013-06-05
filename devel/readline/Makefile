# $OpenBSD: Makefile,v 1.9 2013/04/18 15:08:01 sthen Exp $

COMMENT =		library to edit command lines as they are typed in

V =			6.2
REVISION =		0
DISTNAME =		readline-${V}
PKGNAME =		readline-${V}pl4
PATCHFILES =		readline62-001:0 \
			readline62-002:0 \
			readline62-003:0 \
			readline62-004:0

LIBV =			${V}
SHARED_LIBS +=		history ${LIBV}
SHARED_LIBS +=		readline ${LIBV}

CATEGORIES =		devel

HOMEPAGE =		http://tiswww.case.edu/php/chet/readline/rltop.html

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/support
MASTER_SITES =		${MASTER_SITE_GNU:=readline/}
MASTER_SITES0 =		${MASTER_SITE_GNU:=readline/${DISTNAME}-patches/}
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

MAKE_ENV =		RL_SHLIB_V=${LIBreadline_VERSION}

.include <bsd.port.mk>
