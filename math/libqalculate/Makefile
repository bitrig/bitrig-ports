# $OpenBSD: Makefile,v 1.8 2016/03/11 19:59:15 naddy Exp $

BROKEN-macppc =	libqalculate/Calculator.cc:7030: internal compiler error
COMMENT =	applied math library
CATEGORIES =	math devel
DISTNAME =	libqalculate-0.9.7
HOMEPAGE =	http://qalculate.sourceforge.net/

REVISION=	2

SHARED_LIBS =	qalculate		0.0	# 5.0

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c cln glib-2.0 gmp lzma m ncurses pcre pthread readline
WANTLIB += xml2 z
WANTLIB +=	c++ c++abi

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qalculate/}

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	devel/cln \
		devel/glib2 \
		textproc/libxml \
		devel/readline

# Without recreating Makefile, shell globs in docs/reference/Makefile are
# not expanded, and "fake" and "test" stages fail.
# And just running "good" autoconf is not enough, it whines.
# So we have to re-run automake, too.

USE_LIBTOOL =		gnu
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf automake
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${WRKSRC} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
AUTOCONF_VERSION =	2.67
AUTOMAKE_VERSION =	1.11

SUBST_VARS +=		DISTNAME

# Adapted from audio/xmms port
post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

.include <bsd.port.mk>
