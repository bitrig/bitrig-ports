# $OpenBSD: Makefile,v 1.5 2015/04/03 17:54:42 bcallah Exp $

SHARED_ONLY=	Yes
# based on ffx 17 engine
# jsapi-tests crashes in js::MarkRangeConservatively() on hppa (SIGSEGV in js/src/jsgc.cpp:1142)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on alpha (SIGBUS in jsutil.h:235)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on sparc64 & mips64 (SIGBUS in jsutil.h:33)
# Do not include mips64* in this list. Build fails (OOM). Leaving off so that gtk+3 can build there.
# but let's keep them to build more packages
# sync with x11/gtk+3
ONLY_FOR_ARCHS =	alpha amd64 i386 hppa powerpc sparc64

COMMENT =	Mozilla C implementation of JavaScript

MOZILLA_VERSION =	17.0
DISTNAME =		mozjs17.0.0
PKGNAME =		mozjs17-${MOZILLA_VERSION}
REVISION =		3

SO_VERSION =	0.0
SHARED_LIBS =	mozjs-17.0 ${SO_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://www.mozilla.org/js/spidermonkey/
MASTER_SITES =	http://ftp.mozilla.org/pub/mozilla.org/js/

# MPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread readline nspr4 ncurses plc4 plds4 z
WANTLIB += c++ c++abi

MODULES =	lang/python
MODULES +=	gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

MODPY_RUNDEP =	No
TEST_DEPENDS = ${MODPY_RUN_DEPENDS}
LIB_DEPENDS =	devel/nspr devel/readline

SUBST_VARS +=	MOZILLA_VERSION

WRKDIST =	${WRKDIR}/${DISTNAME}/js/src
USE_GMAKE =	yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pthread \
			--with-system-nspr \
			--enable-readline \
			--enable-ctypes \
			--enable-threadsafe

MODGNU_CONFIG_GUESS_DIRS =	${WRKDIST}/build/autoconf \
				${WRKDIST}/ctypes/libffi

CONFIGURE_ENV +=	SO_VERSION="${SO_VERSION}" \
			MOZILLA_VERSION="${MOZILLA_VERSION}" \
			LIBS=-lncurses \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.a
.ifndef DEBUG
	${STRIP} ${PREFIX}/bin/js17
	${STRIP} ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.so.${LIBmozjs-17.0_VERSION}
.endif

.include <bsd.port.mk>
