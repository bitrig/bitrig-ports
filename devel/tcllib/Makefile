# $OpenBSD: Makefile,v 1.23 2014/10/21 05:10:19 stu Exp $

COMMENT =	Tcl Standard Library

DISTNAME =	tcllib-1.16pl0
REVISION =	0
CATEGORIES =	devel lang/tcl
HOMEPAGE =	http://sourceforge.net/projects/tcllib/
REVISION =	2

# BSD style
PERMIT_PACKAGE_CDROM =	Yes

# Fossil checkin 504cc3a9f31bdf671388f1e995ef621595ca66b7
MASTER_SITES =	http://mirror.arieslabs.com/openbsd/
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
USE_GROFF =	Yes
NO_BUILD =	Yes
PKG_ARCH =	*

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples -apps \
	-pkg-path ${DESTDIR}${MODTCL_TCLDIR} \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tcllib \
	-app-path ${PREFIX}/share/examples/tcllib/apps \
	-mp ${DESTDIR}${MODTCL_MODDIR}/85 \
	-csb ${PREFIX}/share/doc \
	-tclsh ${MODTCL_BIN} \
	-descr "`cat ${PKGDIR}/DESCR`"
	mv ${PREFIX}/share/examples/tcllib/apps/dtplite ${PREFIX}/bin

# Define TEST_MODULES to restrict to a subset of regression tests.
do-test:
	${SETENV} ${MAKE_ENV} ${TEST_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test run -v ${TEST_MODULES}

.include <bsd.port.mk>
