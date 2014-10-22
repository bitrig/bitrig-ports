# $OpenBSD: Makefile,v 1.5 2014/10/22 13:19:37 gonzalo Exp $

COMMENT =		top-like monitor for Apache

DISTNAME =		apachetop-0.12.6
REVISION =		2
CATEGORIES =		sysutils

HOMEPAGE =		http://freshmeat.net/projects/apachetop/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		http://www.webta.org/apachetop/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59
USE_GROFF =		Yes

CONFIGURE_ARGS =	--disable-fam \
			--with-logfile=/var/www/logs/access_log
CONFIGURE_ENV =		CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib'

WANTLIB +=		c m ncurses readline
WANTLIB +=		c++ c++abi pthread
LIB_DEPENDS=		devel/readline

.include <bsd.port.mk>
