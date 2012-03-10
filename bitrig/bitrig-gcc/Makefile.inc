# $OpenBSD: Makefile.inc,v 1.12 2011/11/19 22:19:53 pascal Exp $

# common stuff for all gcc ports
# we assume each one defines a V variable.

CATEGORIES=	bitrig 

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

COM=		GNU compiler collection
COMMENT=	${COM}: core C compiler
COMMENT-main=	${COMMENT}
COMMENT-c++ =	${COM}: C++ compiler
COMMENT-estdc=	${COM}: C++ compiler library
COMMENT-g77=	${COM}: f77 compiler
COMMENT-f95=	${COM}: f95 compiler
COMMENT-java=	${COM}: java compiler
COMMENT-objc=	${COM}: obj C compiler
COMMENT-ada=	${COM}: Ada compiler
COMMENT-go=	${COM}: Go compiler

PKGNAME?=	bitrig-gcc-${FULL_PKGVERSION}
PKGNAME-c++ ?=	bitrig-g++-${FULL_PKGVERSION}
PKGNAME-estdc?=	bitrig-libstdc++-${FULL_PKGVERSION}
PKGNAME-g77?=	bitrig-g77-${FULL_PKGVERSION}
PKGNAME-f95?=	bitrig-g95-${FULL_PKGVERSION}
PKGNAME-java?=	bitrig-gcj-${FULL_PKGVERSION}
PKGNAME-objc?=	bitrig-gobjc-${FULL_PKGVERSION}
PKGNAME-ada?=	bitrig-gnat-${FULL_PKGVERSION}
PKGNAME-go?=	bitrig-gccgo-${FULL_PKGVERSION}

DESCR-main ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR
DESCR-c++ ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-c++
DESCR-estdc ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-estdc
DESCR-g77 ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-g77
DESCR-f95 ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-f95
DESCR-java ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-java
DESCR-objc ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-objc
DESCR-ada ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-ada
DESCR-go ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-go

HOMEPAGE?=	http://gcc.gnu.org/

#DIST_SUBDIR=gcc
CONFIG=${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS+=CONFIG V
