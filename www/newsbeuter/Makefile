# $OpenBSD: Makefile,v 1.3 2014/12/31 08:42:27 landry Exp $

COMMENT =		open-source RSS/Atom feed reader for text terminals
DISTNAME =		newsbeuter-2.7
REVISION =		1
CATEGORIES =		www
BROKEN-hppa =	undefined reference to `__sync_val_compare_and_swap_4' in libjson-c

HOMEPAGE =		http://newsbeuter.org/

# mit
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl json-c m ncursesw pthread sqlite3
WANTLIB += stfl xml2
WANTLIB += c++ c++abi

MASTER_SITES =		http://newsbeuter.org/downloads/

MODULES =		devel/gettext

LIB_DEPENDS =		devel/stfl \
			devel/json-c \
			textproc/libxml	\
			net/curl

MAKE_FLAGS =		CXX="${CXX}"
FAKE_FLAGS =		mandir=${PREFIX}/man

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	config.sh

post-extract:
	rm $(WRKSRC)/src/google*.cpp

.include <bsd.port.mk>
