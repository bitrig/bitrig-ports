# $OpenBSD: Makefile,v 1.86 2014/09/15 19:24:16 brad Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

COMMENT =	modular, fast C/C++/ObjC compiler, static analyzer and tools
DPB_PROPERTIES= parallel

LLVM_V =	3.5
DISTNAME =	llvm-${LLVM_V}.20140228
REVISION =	14
CATEGORIES =	devel
MASTER_SITES =	http://comstyle.com/source/
EXTRACT_SUFX =	.tar.xz

LLVM_V =	3.5.0
DISTREALNAME =	llvm-${LLVM_V}
DISTNAME =	${DISTREALNAME}
EPOCH =		0

CATEGORIES =	devel

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

SHARED_LIBS +=	clang 3.0	# 3.5

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pthread z
WANTLIB +=	c++ c++abi

MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/

DISTFILES =	${DISTREALNAME}.src${EXTRACT_SUFX} cfe-${LLVM_V}.src${EXTRACT_SUFX}
DISTFILES +=	compiler-rt-${LLVM_V}.src${EXTRACT_SUFX}
WRKDIST =	${WRKDIR}/llvm-${LLVM_V}.src

MODULES =	devel/cmake \
		lang/python

TEST_DEPENDS =	devel/dejagnu
BUILD_DEPENDS += textproc/py-sphinx

SEPARATE_BUILD =	Yes

CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_REQUIRES_RTTI:Bool=True \
			-DLLVM_TARGETS_TO_BUILD:String="AArch64;ARM;X86" \
			-DCMAKE_BUILD_TYPE:String=Release \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2:Bool=True

CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V INSTALL_ARCH

TEST_TARGET=		check

.if ${MACHINE_ARCH:Mamd64}
INSTALL_ARCH = x86_64
PKG_ARGS+=-Damd64=1
.else
INSTALL_ARCH = ${MACHINE_ARCH}
PKG_ARGS+=-Damd64=0
.endif

.if ${MACHINE_ARCH:Marm}
PKG_ARGS+=-Darm=1
.else
PKG_ARGS+=-Darm=0
.endif

.if ${MACHINE_ARCH:Maarch64}
PKG_ARGS+=-Daarch64=1
.else
PKG_ARGS+=-Daarch64=0
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
	${INSTALL_DATA} ${WRKBUILD}/lib/clang/${LLVM_V}/lib/bitrig/libclang_rt.builtins-${INSTALL_ARCH}.a \
	    ${PREFIX}/lib/libclang_rt.builtins-${ARCH}.a

.include <bsd.port.mk>
