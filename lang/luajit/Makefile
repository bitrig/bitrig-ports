# $OpenBSD: Makefile,v 1.15 2015/01/20 15:26:26 abieber Exp $

SHARED_ONLY =	Yes
SHARED_LIBS +=	luajit-${MODLUA_VERSION} 0.0 # 2.0.0

COMMENT =	just-in-time compiler for Lua
V =		2.0.3
DISTNAME =	LuaJIT-${V}
PKGNAME =	${DISTNAME:L}
REVISION =	4

CATEGORIES =	lang

HOMEPAGE =	http://luajit.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c c++abi m pthread

MASTER_SITES =	${HOMEPAGE}download/

MODULES =	lang/lua
MODLUA_SA=	Yes

MODULES +=	gcc4
MODGCC4_ARCHS =	powerpc
MODGCC4_LANGS =	c

MAKE_FLAGS += \
	CC="${CC}" \
	CCOPT="${CFLAGS}" \
	CCOPT_x86="" \
	INSTALL_LJLIBD="${DESTDIR}${MODLUA_DATADIR}" \
	INSTALL_MAN="${DESTDIR}${PREFIX}/man/man1" \
	INSTALL_SONAME=libluajit-${MODLUA_VERSION}.so.${LIBluajit-${MODLUA_VERSION}_VERSION} \
	PREFIX="${PREFIX}"

USE_GMAKE =	Yes

SUBST_VARS+=	MODLUA_VERSION

# http://luajit.org/extensions.html
.if defined(FLAVOR) && ${FLAVOR:Mlua52}
MAKE_FLAGS +=	XCFLAGS="-DLUAJIT_ENABLE_LUA52COMPAT"
.endif

pre-configure:
	${SUBST_CMD} ${WRKDIST}/Makefile

post-install:
	mv ${PREFIX}/bin/luajit-$V ${PREFIX}/bin/luajit${MODLUA_DEP_VERSION}

do-test:
	${WRKSRC}/src/luajit -e "print('hello world')" | grep "^hello world$$"

.include <bsd.port.mk>
