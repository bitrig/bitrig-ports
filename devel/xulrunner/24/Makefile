# $OpenBSD: Makefile,v 1.21 2015/05/28 10:17:23 pascal Exp $

BROKEN = 		needs work on bitrig

# XXX remember to bump www/conkeror because it has a symlink pointing to lib/xulrunner-${MOZILLA_VER}
MOZILLA_VERSION =	24.8.0esr
MOZILLA_BRANCH =	esr24
MOZILLA_PROJECT =	xulrunner
MOZILLA_DIST =		firefox
PKGSPEC-devel =		xulrunner-devel->=24.0,<31.0
PKGSPEC-main =		xulrunner->=24.0,<31.0
REVISION-main =		3
REVISION-devel =	4

SO_VERSION =		0.0
MOZILLA_LIBS =		mozgnome mozalloc xul

RUN_DEPENDS-devel =	${PKGNAME-main}:${BASE_PKGPATH},-main

CONFIGURE_ENV +=	MOZ_OFFICIAL_BRANDING_DIRECTORY=browser/branding

post-install:
	#otherwise libxul.so ends up being 1GB in sdk/lib
	${STRIP} ${PREFIX}/lib/${MOZILLA_PROJECT}-devel-${MOZILLA_VER}/sdk/lib/libxul.so.${SO_VERSION}
	#avoid conflict with lang/spidermonkey
	mv ${PREFIX}/lib/pkgconfig/{mozilla,libxul}-js.pc
	# MOZ_ENABLE_SKIA_GPU is false on ppc (see configure.in:8041 / bug 849253)
	# manually install the header to avoir packaging hacks
.if ${MACHINE_ARCH} == "powerpc"
	${INSTALL_DATA} ${WRKSRC}/gfx/gl/GLContextSkia.h \
		${PREFIX}/include/${MOZILLA_PROJECT}-${MOZILLA_VER}
.endif

.include <bsd.port.mk>
