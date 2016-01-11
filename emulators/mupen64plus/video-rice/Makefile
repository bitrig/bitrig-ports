# $OpenBSD: Makefile,v 1.11 2016/01/11 09:35:45 ajacoutot Exp $

BROKEN = 		needs work on bitrig

COMMENT =		n64 emulator opengl video plugin
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread c++ c++abi
LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
