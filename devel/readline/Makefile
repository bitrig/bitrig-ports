# $OpenBSD: Makefile,v 1.11 2014/03/25 21:20:39 espie Exp $

COMMENT =		library to edit command lines as they are typed in

V =			6.2
REVISION =		1
DISTNAME =		readline-${V}
PKGNAME =		readline-${V}pl4
PATCHFILES =		readline62-001:0 \
			readline62-002:0 \
			readline62-003:0 \
			readline62-004:0

LIBV =			5.0
SHARED_LIBS +=		history ${LIBV}
SHARED_LIBS +=		readline ${LIBV}

CATEGORIES =		devel

HOMEPAGE =		http://tiswww.case.edu/php/chet/readline/rltop.html

MAINTAINER =		Laurent Fanis <laurent.fanis@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/support
MASTER_SITES =		${MASTER_SITE_GNU:=readline/}
MASTER_SITES0 =		${MASTER_SITE_GNU:=readline/${DISTNAME}-patches/}
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

MAKE_ENV =		RL_SHLIB_V=${LIBreadline_VERSION}

.include <bsd.port.mk>
