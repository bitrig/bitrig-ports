# $OpenBSD: Makefile,v 1.108 2015/08/24 07:45:56 ajacoutot Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

DPB_PROPERTIES= parallel

COMMENT =	modular, fast C/C++/ObjC compiler, static analyzer and tools

LLVM_V =	3.8.0
DISTNAME =	llvm-${LLVM_V}.src
PKGNAME =	llvm-${LLVM_V}
#REVISION =	0
CATEGORIES =	devel
DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cfe-${LLVM_V}.src${EXTRACT_SUFX}
DISTFILES +=	compiler-rt-${LLVM_V}.src${EXTRACT_SUFX}
MASTER_SITES =	http://www.llvm.org/releases/${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS +=	clang 3.0 \
		LTO 0.0

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread z
WANTLIB +=		c++ c++abi

MODULES =		devel/cmake \
			lang/python

TEST_DEPENDS =		devel/dejagnu \
			shells/bash
BUILD_DEPENDS +=	textproc/py-sphinx

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
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/scan-build/bin/scan-build
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/c-index-test/CMakeLists.txt
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC}/docs && make -f Makefile.sphinx man

post-install:
	echo ${WRKSRC}
	${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/tools/scan-build/libexec/ccc-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/libexec/c++-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/bin/scan-build ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tools/clang/tools/scan-build/share/scan-build/sorttable.js \
	    ${WRKSRC}/tools/clang/tools/scan-build/share/scan-build/scanview.css \
	    ${PREFIX}/share/llvm
	${INSTALL_DATA_DIR} ${PREFIX}/share/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs/_build/man/* \
	    ${PREFIX}/share/man/man1
	${INSTALL_DATA} ${WRKBUILD}/lib/clang/${LLVM_V}/lib/bitrig/libclang_rt.builtins-${INSTALL_ARCH}.a \
	    ${PREFIX}/lib/libclang_rt.builtins-${ARCH}.a

.include <bsd.port.mk>
