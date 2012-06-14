# $OpenBSD: Makefile,v 1.43 2012/05/26 09:14:34 jasper Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

SHARED_LIBS +=  libclang                  0.0 # 3.0

COMMENT =	modular, fast C/C++/ObjC compiler, static analyzer and tools

LLVM_V =	3.1
DISTREALNAME =	llvm-${LLVM_V}
DISTNAME =	bitrig-${DISTREALNAME}
PKGNAME =	bitrig-llvm-${LLVM_V}
REVISION =	11

CATEGORIES =	bitrig

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

VMEM_WARNING =	Yes
ONLY_FOR_ARCHS = amd64 i386

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread stdc++

MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/
MASTER_SITES0 = https://www.bitrig.org/pub/distfiles/

DISTFILES =	${DISTREALNAME}.src${EXTRACT_SUFX} clang-${LLVM_V}.src${EXTRACT_SUFX}
DISTFILES +=	compiler-rt-20120611.tar.gz:0
WRKDIST =	${WRKDIR}/llvm-${LLVM_V}.src

post-extract:
	@mv ${WRKDIR}/clang-${LLVM_V}.src ${WRKDIST}/tools/clang
	@mv ${WRKDIR}/compiler-rt ${WRKDIST}/projects/compiler-rt

MODULES =	devel/cmake \
		lang/python

REGRESS_DEPENDS = devel/dejagnu

MAKE_FLAGS =	OPTIMIZE_OPTION="${CFLAGS}" \
		VERBOSE=Yes \
		INSTALL="install -c"

REGRESS_FLAGS =	RUNTESTFLAGS=

SEPARATE_BUILD =	Yes
USE_LIBTOOL =		Yes
# uncomment if you want to use MAKE_JOBS
USE_GMAKE =		Yes
MAKE_ENV =		REQUIRES_RTTI=1

PREFIX=			/usr
CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_TARGETS_TO_BUILD:String="X86" \
			-DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
			-DCMAKE_BUILD_TYPE:String=Release

CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH

.if ${MACHINE_ARCH:Mamd64}
INSTALL_ARCH = x86_64
.else
INSTALL_ARCH = ${ARCH}
.endif

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/scan-build/scan-build
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC}/docs/CommandGuide && for i in *.pod; do \
	pod2man --release=CVS --center="LLVM Command Guide" \
	    $$i man/man1/$${i%.pod}.1; \
	done
	pod2man --release=CVS --center="LLVM Command Guide" \
	    ${WRKSRC}/tools/clang/docs/tools/clang.pod \
	    ${WRKSRC}/docs/CommandGuide/man/man1/clang.1

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/tools/scan-build/ccc-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/c++-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/scan-build ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tools/clang/tools/scan-build/sorttable.js \
	    ${WRKSRC}/tools/clang/tools/scan-build/scanview.css \
	    ${PREFIX}/share/llvm
	${INSTALL_DATA_DIR} ${PREFIX}/share/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs/CommandGuide/man/man1/* \
	    ${PREFIX}/share/man/man1
	${INSTALL_DATA} ${WRKBUILD}/lib/libclang_rt.${INSTALL_ARCH}.a ${PREFIX}/lib/libclang_rt.${ARCH}.a

.include <bsd.port.mk>
