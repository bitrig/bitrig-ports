# $OpenBSD: Makefile,v 1.43 2012/05/26 09:14:34 jasper Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

COMMENT =	modular, fast C/C++/ObjC compiler, static analyzer and tools
DPB_PROPERTIES= parallel

LLVM_V =	3.3
DISTREALNAME =	llvm-${LLVM_V}
DISTNAME =	bitrig-${DISTREALNAME}
PKGNAME =	bitrig-llvm-${LLVM_V}
REVISION =	4

CATEGORIES =	bitrig

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

SHARED_LIBS +=  clang 1.0      # 3.3

VMEM_WARNING =	Yes
ONLY_FOR_ARCHS = amd64 i386 arm

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pthread stdc++ z

MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/

DISTFILES =	${DISTREALNAME}.src${EXTRACT_SUFX} cfe-${LLVM_V}.src${EXTRACT_SUFX}
DISTFILES +=	compiler-rt-${LLVM_V}.src${EXTRACT_SUFX}
WRKDIST =	${WRKDIR}/llvm-${LLVM_V}.src

MODULES =	devel/cmake \
		lang/python

TEST_DEPENDS =	devel/dejagnu
BUILD_DEPENDS += textproc/py-sphinx

MAKE_FLAGS =	OPTIMIZE_OPTION="${CFLAGS}" \
		VERBOSE=Yes \
		INSTALL="install -c"

TEST_FLAGS =	RUNTESTFLAGS=

SEPARATE_BUILD =	Yes

PREFIX=			/usr
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_REQUIRES_RTTI:Bool=True \
			-DLLVM_TARGETS_TO_BUILD:String="ARM;X86" \
			-DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
			-DCMAKE_BUILD_TYPE:String=Release \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2:Bool=True

CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V

.if ${MACHINE_ARCH:Mamd64}
INSTALL_ARCH = x86_64
PKG_ARGS+=-Damd64=1
.else
INSTALL_ARCH = ${MACHINE_ARCH}
PKG_ARGS+=-Damd64=0
.endif

.if ${MACHINE_ARCH:Mi386}
PKG_ARGS+=-Di386=1
.else
PKG_ARGS+=-Di386=0
.endif

.if ${MACHINE_ARCH:Marm}
PKG_ARGS+=-Darm=1
.else
PKG_ARGS+=-Darm=0
.endif

post-extract:
	@mv ${WRKDIR}/cfe-${LLVM_V}.src ${WRKDIST}/tools/clang
	@mv ${WRKDIR}/compiler-rt-${LLVM_V}.src ${WRKDIST}/projects/compiler-rt

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/scan-build/scan-build
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/c-index-test/CMakeLists.txt
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC}/docs && make -f Makefile.sphinx man
	pod2man --release=CVS --center="LLVM" \
	    ${WRKSRC}/tools/clang/docs/tools/clang.pod \
	    ${WRKSRC}/docs/_build/man/clang.1

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/tools/scan-build/ccc-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/c++-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/scan-build ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tools/clang/tools/scan-build/sorttable.js \
	    ${WRKSRC}/tools/clang/tools/scan-build/scanview.css \
	    ${PREFIX}/share/llvm
	${INSTALL_DATA_DIR} ${PREFIX}/share/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs/_build/man/* \
	    ${PREFIX}/share/man/man1
	${INSTALL_DATA} ${WRKBUILD}/lib/clang/${LLVM_V}/lib/bitrig/libclang_rt.${INSTALL_ARCH}.a \
	    ${PREFIX}/lib/libclang_rt.${ARCH}.a

.include <bsd.port.mk>
