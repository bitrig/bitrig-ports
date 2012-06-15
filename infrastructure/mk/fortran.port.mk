# $OpenBSD: fortran.port.mk,v 1.12 2010/11/20 19:57:30 espie Exp $

MODFORTRAN_COMPILER ?= g77

.if empty(MODFORTRAN_COMPILER)
ERRORS += "Fatal: need to specify MODFORTRAN_COMPILER"
.endif

.if ${MODFORTRAN_COMPILER:L} == "g77"
MODFORTRAN_LIB_DEPENDS += devel/libf2c
MODFORTRAN_WANTLIB += g2c
MODFORTRAN_BUILD_DEPENDS += lang/g77 devel/libf2c
MODFORTRAN_post-patch = \
if test -e /usr/bin/g77 -o -e /usr/bin/f77; then \
    echo "Error: remove old fortran compiler /usr/bin/f77 /usr/bin/g77"; \
    exit 1; \
fi
.elif ${MODFORTRAN_COMPILER:L} == "gfortran"
MODFORTRAN_LIB_DEPENDS += lang/gfortran,-lib
MODFORTRAN_WANTLIB += gfortran
MODFORTRAN_BUILD_DEPENDS += lang/gfortran
.else
ERRORS += "Fatal: MODFORTRAN_COMPILER must be one of: g77 gfortran"
.endif
