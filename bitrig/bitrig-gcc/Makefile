# $OpenBSD: Makefile,v 1.18 2012/03/07 20:39:37 kurt Exp $

ONLY_FOR_ARCHS = amd64 i386 powerpc sparc sparc64
BROKEN-sparc64 = gengtype looping infinitely

V = 4.6.2
FULL_VERSION = $V
FULL_PKGVERSION = $V
CATEGORIES = bitrig
BOOTSTRAP_GEN = 4
LIBC_VERSION = 60.1
LIBSTDC_VERSION = 14.0

PKGNAME-main =  bitrig-gcc-${FULL_PKGVERSION}
PKGNAME-estdc = bitrig-libstdc++-${FULL_PKGVERSION}

REVISION-main = 7
REVISION-estdc =7

SHARED_LIBS =	stdc++		${LIBSTDC_VERSION} \
		ssp		1.0 \
		lto_plugin      0.0


MULTI_PACKAGES = -main -estdc

PREFIX = 	/usr
INSTDIR =	${PREFIX}

.include <bsd.port.arch.mk>

REALDISTNAME = 	gcc-${FULL_VERSION}
DISTNAME =	bitrig-${REALDISTNAME}
DISTFILES =	${REALDISTNAME}.tar.bz2
EXTRACT_ONLY =	${REALDISTNAME}.tar.bz2
.include "Makefile.inc"

USE_LIBTOOL =	Yes

BUILD_DEPENDS +=	devel/bison

REGRESS_DEPENDS = 	devel/dejagnu \
			devel/autogen

MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
#MASTER_SITES0 =	http://spacehopper.org/mirrors/
MASTER_SITES0 = ftp://quatramaran.ens.fr/pub/espie/
MASTER_SITES1 =	ftp://sources.redhat.com/pub/java/

LANGS = c
.if ${BUILD_PACKAGES:M-estdc}
LANGS := ${LANGS},c++
REGRESS_DEPENDS += 	${BUILD_PKGPATH},-estdc>=4.6,<4.7
.endif

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

EXTRA_ENV += am_cv_func_iconv=no JAR=no
EXTRA_ENV += ac_cv_prog_CONFIGURED_M4=/usr/bin/m4
MAKE_FLAGS +=	 ac_cv_path_mkdir=/bin/mkdir
MAKE_FLAGS +=	 -j4

CONFIGURE_ENV += ${EXTRA_ENV}
MAKE_ENV += ${EXTRA_ENV}

# Note: the configure target passes CFLAGS to the configure script anyways.

CFLAGS = -O2 -g

CONFIGURE_ARGS += \
	--prefix=${PREFIX} \
	--mandir=${PREFIX}/share \
	--verbose \
	--disable-nls  \
	--disable-checking \
	--with-system-zlib \
	--disable-libmudflap \
	--disable-libgomp \
	--disable-tls \
	--with-ld=/usr/bin/ld \
	--with-as=/usr/bin/as \
	--with-gnu-ld \
	--with-gnu-as \
	--enable-threads=posix \
	--enable-wchar_t \
	--with-gmp="${LOCALBASE}" \
	--enable-languages=${LANGS}

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS += --enable-cpp

CONFIGURE_ARGS += ${CONFIGURE_SHARED}

SEPARATE_BUILD = flavored

USE_GMAKE = yes

# skip the stage2/stage3 bullshit under normal circumstances
ALL_TARGET = bootstrap2

MAKE_FLAGS += libstdc___la_LDFLAGS='-version-info 31:0:0 -lm'

.if ${MACHINE_ARCH} == "sparc"  || ${MACHINE_ARCH} == "amd64"
PIC = 1
PKG_ARGS += -DPIC=1
.else
PIC = 0
PKG_ARGS += -DPIC=0
.endif

.if ${MACHINE_ARCH} == "powerpc"
PKG_ARGS += -DPPC=1
.else
PKG_ARGS += -DPPC=0
.endif

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -DI386=1
.else
PKG_ARGS += -DI386=0
.endif

RUN_DEPENDS =		${BUILD_PKGPATH},-main
WANTLIB =		c gmp mpc mpfr z

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			${BUILD_PKGPATH},-estdc>=4.6,<4.7
RUN_DEPENDS-estdc =

WANTLIB-estdc =		m

LIB_DEPENDS +=		devel/gmp>=4.2 \
			devel/mpfr \
			devel/libmpc
LIB_DEPENDS-estdc =

.if ${MACHINE_ARCH:Mamd64}
CONFIG = x86_64-unknown-openbsd${OSREV}
.endif

WRKDIST=	${WRKDIR}/${REALDISTNAME}

post-extract:
.for f in egcc gnatbind gnatmake gnatlink
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
	ln -sf /usr/bin/nm ${WRKDIR}/bin/enm
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> \
		${WRKSRC}/libversions
.endfor

post-install:
	mv ${PREFIX}/bin/cpp ${PREFIX}/libexec/cpp
	ln ${PREFIX}/bin/gcc ${PREFIX}/bin/cc
	ln ${PREFIX}/bin/${CONFIG}-gcc ${PREFIX}/bin/${CONFIG}-cc
	ln ${PREFIX}/bin/${CONFIG}-gcc-${V} ${PREFIX}/bin/${CONFIG}-cc-${V}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include-fixed
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcc.a
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcov.a
.if ${PIC} == "1"
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/fpic/libgcc.a
	chown ${BINOWN}:${BINGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${V}/fpic/libgcov.a
.endif

.include <bsd.port.mk>

GCC_PACKAGE = ${PACKAGE_REPOSITORY}/i386/all/${PKGNAME-main}${PKG_SUFX}

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/man/man3 
