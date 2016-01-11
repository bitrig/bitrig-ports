# $OpenBSD: Makefile,v 1.14 2016/01/11 21:31:35 espie Exp $

COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.3 # 2.5
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m c++ c++abi z freetype png pthread SDL2
LIB_DEPENDS =		devel/sdl2 \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD =	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so

.include <bsd.port.mk>
