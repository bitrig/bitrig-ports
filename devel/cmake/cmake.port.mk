# $OpenBSD: cmake.port.mk,v 1.21 2013/08/22 09:53:20 dcoppa Exp $

BUILD_DEPENDS+=	devel/cmake>=2.8.11.1p0

.for _n _v in ${SHARED_LIBS}
CONFIGURE_ENV+=LIB${_n}_VERSION=${_v}
MAKE_ENV+=LIB${_n}_VERSION=${_v}
.endfor

USE_NINJA ?= Yes

# XXX: CMake's built-in ELF parser is broken on arm
.if ${MACHINE_ARCH} == "arm"
USE_NINJA = No
.endif

.if ${USE_NINJA:L} == "yes"
BUILD_DEPENDS += devel/ninja
_MODCMAKE_GEN = Ninja
NINJA ?= ninja
NINJA_FLAGS ?= -v -j ${MAKE_JOBS}
MODCMAKE_BUILD_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	${NINJA} ${NINJA_FLAGS} ${ALL_TARGET}
MODCMAKE_INSTALL_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	${FAKE_SETUP} ${NINJA} ${NINJA_FLAGS} ${FAKE_TARGET}
MODCMAKE_TEST_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	${NINJA} ${NINJA_FLAGS} ${TEST_FLAGS} ${TEST_TARGET}

.if !target(do-build)
do-build:
	@${MODCMAKE_BUILD_TARGET}
.endif

.if !target(do-install)
do-install:
	@${MODCMAKE_INSTALL_TARGET}
.endif

.if !target(do-test)
do-test:
	@${MODCMAKE_TEST_TARGET}
.endif

.else
_MODCMAKE_GEN = "Unix Makefiles"
# XXX cmake include parser is bogus
DPB_PROPERTIES += nojunk
.endif

CONFIGURE_ENV +=	MODJAVA_VER=${MODJAVA_VER} \
			MODLUA_VERSION=${MODLUA_VERSION} \
			MODLUA_BIN=${MODLUA_BIN} \
			MODLUA_INCL_DIR=${MODLUA_INCL_DIR} \
			MODPY_VERSION=${MODPY_VERSION} \
			MODPY_BIN=${MODPY_BIN} \
			MODPY_INCDIR=${MODPY_INCDIR} \
			MODPY_LIBDIR=${MODPY_LIBDIR} \
			MODTCL_VERSION=${MODTCL_VERSION} \
			MODTK_VERSION=${MODTK_VERSION} \
			MODTCL_INCDIR=${MODTCL_INCDIR} \
			MODTK_INCDIR=${MODTK_INCDIR} \
			MODTCL_LIBDIR=${MODTCL_LIBDIR} \
			MODTK_LIBDIR=${MODTK_LIBDIR} \
			MODTCL_LIB=${MODTCL_LIB} \
			MODTK_LIB=${MODTK_LIB}

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	cmake
.endif
MODCMAKE_configure=	cd ${WRKBUILD} && ${_SYSTRACE_CMD} ${SETENV} \
	CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake \
		-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY:Bool=True \
		-G ${_MODCMAKE_GEN} ${CONFIGURE_ARGS} ${WRKSRC}

SEPARATE_BUILD ?=	Yes

TEST_TARGET ?=	test

MODCMAKE_WANTCOLOR ?= No
MODCMAKE_VERBOSE ?= Yes

.if ${MODCMAKE_WANTCOLOR:L} == "yes" && defined(TERM)
MAKE_ENV += TERM=${TERM}
.endif

.if ${MODCMAKE_VERBOSE:L} == "yes"
MAKE_ENV += VERBOSE=1
.endif

