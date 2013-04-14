# $OpenBSD: clang.port.mk,v 1.4 2012/12/23 21:36:33 brad Exp $

MODCLANG_VERSION=	3.2

MODCLANG_ARCHS ?=
MODCLANG_LANGS ?=

.if !${MODCLANG_LANGS:L:Mc}
# Always include support for this
MODCLANG_LANGS += c
.endif

_MODCLANG_OKAY = c c++
.for _l in ${MODCLANG_LANGS:L}
.  if !${_MODCLANG_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODCLANG_ARCH_USES = No

.if ${MODCLANG_ARCHS:L} != ""
.  for _i in ${MODCLANG_ARCHS}
.    if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = Yes
.    endif
.  endfor
.endif

_MODCLANG_LINKS =
.if ${_MODCLANG_ARCH_USES:L} == "yes"

BITRIG_LLVM_VERSION=	3.2
.if ${MODCLANG_VERSION} == ${BITRIG_LLVM_VERSION}
BUILD_DEPENDS += bitrig/bitrig-llvm
.else
BUILD_DEPENDS += bitrig/bitrig-llvm-${MODCLANG_VERSION}
.endif
_MODCLANG_LINKS = clang gcc clang cc

.if ${MODCLANG_LANGS:L:Mc++}
_MODCLANG_LINKS += clang++ g++ clang++ c++
.endif
.endif

.if !empty(_MODCLANG_LINKS)
.  for _src _dest in ${_MODCLANG_LINKS}
MODCLANG_post-patch += ln -sf ${LOCALBASE}/bin/${_src} ${WRKDIR}/bin/${_dest};
.  endfor
.endif

SUBST_VARS+=	MODCLANG_VERSION
