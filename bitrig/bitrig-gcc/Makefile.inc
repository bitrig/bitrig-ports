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

PKGNAME?=	gcc-${FULL_PKGVERSION}
PKGNAME-c++ ?=	g++-${FULL_PKGVERSION}
PKGNAME-estdc?=	libstdc++-${FULL_PKGVERSION}
PKGNAME-g77?=	g77-${FULL_PKGVERSION}
PKGNAME-f95?=	g95-${FULL_PKGVERSION}
PKGNAME-java?=	gcj-${FULL_PKGVERSION}
PKGNAME-objc?=	gobjc-${FULL_PKGVERSION}
PKGNAME-ada?=	gnat-${FULL_PKGVERSION}
PKGNAME-go?=	gccgo-${FULL_PKGVERSION}

DESCR-main ?=	${PORTSDIR}/bitrig-gcc/DESCR
DESCR-c++ ?=	${PORTSDIR}/bitrig-gcc/DESCR-c++
DESCR-estdc ?=	${PORTSDIR}/bitrig-gcc/DESCR-estdc
DESCR-g77 ?=	${PORTSDIR}/bitrig-gcc/DESCR-g77
DESCR-f95 ?=	${PORTSDIR}/bitrig-gcc/DESCR-f95
DESCR-java ?=	${PORTSDIR}/bitrig-gcc/DESCR-java
DESCR-objc ?=	${PORTSDIR}/bitrig-gcc/DESCR-objc
DESCR-ada ?=	${PORTSDIR}/bitrig-gcc/DESCR-ada
DESCR-go ?=	${PORTSDIR}/bitrig-gcc/DESCR-go

HOMEPAGE?=	http://gcc.gnu.org/

#DIST_SUBDIR=gcc
CONFIG=${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS+=CONFIG V
