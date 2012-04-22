# $OpenBSD: Makefile,v 1.37 2012/01/19 08:41:13 sthen Exp $

PORT =		88
SHARED_LIBS +=  libclang                  0.0 # 3.0

COMMENT =	modular, fast C/C++/ObjC compiler, static analyzer and tools

LLVM_V =	3.1
DISTREALNAME =	llvm-${LLVM_V}
DISTNAME =	bitrig-${DISTREALNAME}
#REVISION =	0

CATEGORIES =	bitrig

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

VMEM_WARNING =	Yes
ONLY_FOR_ARCHS = ${GCC4_ARCHS}
NOT_FOR_ARCHS =	sparc # uses too much memory

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread

#MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/
MASTER_SITES =	http://localhost:${PORT}/

#DISTFILES =	${DISTREALNAME}${EXTRACT_SUFX}
DISTFILES =	${DISTREALNAME}${EXTRACT_SUFX} clang-${LLVM_V}${EXTRACT_SUFX}
WRKDIST =	${WRKDIR}/llvm-${LLVM_V}.src

post-extract:
	@mv ${WRKDIR}/clang-${LLVM_V}.src ${WRKDIST}/tools/clang

MODULES =	devel/cmake \
		lang/python

REGRESS_DEPENDS = devel/dejagnu

#MAKE =		"/usr/local/bin/${GMAKE} -j${MAKE_JOBS}"
USE_GMAKE=	yes
MAKE_FLAGS =	OPTIMIZE_OPTION="${CFLAGS}" \
		VERBOSE=Yes \
		INSTALL="install -c" -j${MAKE_JOBS}

REGRESS_FLAGS =	RUNTESTFLAGS=

SEPARATE_BUILD =	simple
USE_LIBTOOL =		gnu
MAKE_ENV =		REQUIRES_RTTI=1 

PREFIX =		/usr

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DCMAKE_BUILD_TYPE:String=Release \
			-DCMAKE_INSTALL_PREFIX:PATH=${PREFIX}

# i386 clang can't rebuild itself so force egcc for now
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=	CC=gcc CXX=g++
.endif

CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH

pre-configure:
	@perl -pi -e s,-lpthread,-pthread,g ${WRKSRC}/configure
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/scan-build/scan-build
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	mkdir -p ${WRKSRC}/docs/CommandGuide/man/man1 && \
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

svn:
	rm -rf /tmp/bitrig-llvm/
	mkdir -p /tmp/bitrig-llvm
	cd /tmp/bitrig-llvm && svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm-3.1.src && tar zcvf llvm-3.1.tar.gz llvm-3.1.src
	cd /tmp/bitrig-llvm && svn co http://llvm.org/svn/llvm-project/cfe/trunk clang-3.1.src && tar zcvf clang-3.1.tar.gz clang-3.1.src
	@echo serving tar.gz files
	cd /tmp/bitrig-llvm && sudo /usr/local/sbin/thttpd -D -p ${PORT}

.include <bsd.port.mk>
