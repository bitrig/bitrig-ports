# $OpenBSD: Makefile,v 1.13 2015/11/05 12:43:20 pirofti Exp $

COMMENT =		library to edit command lines as they are typed in

V =			6.3
DISTNAME =		readline-${V}
PKGNAME =		readline-${V}
PATCHFILES =		readline63-001:0 \
			readline63-002:0 \
			readline63-003:0 \
			readline63-004:0 \
			readline63-005:0 \
			readline63-006:0 \
			readline63-007:0 \
			readline63-008:0

LIBV =			1.0
SHARED_LIBS +=		ehistory ${LIBV}
SHARED_LIBS +=		ereadline ${LIBV}

CATEGORIES =		devel

HOMEPAGE =		http://tiswww.case.edu/php/chet/readline/rltop.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/support
MASTER_SITES =		${MASTER_SITE_GNU:=readline/}
MASTER_SITES0 =		${MASTER_SITE_GNU:=readline/${DISTNAME}-patches/}
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

MAKE_ENV =		RL_SHLIB_V=${LIBreadline_VERSION}

.include <bsd.port.mk>
