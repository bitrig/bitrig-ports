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
COMMENT-estdc=	${COM}: C++ compiler library

PKGNAME?=	bitrig-gcc-${FULL_PKGVERSION}
PKGNAME-estdc?=	bitrig-libstdc++-${FULL_PKGVERSION}

DESCR-main ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR
DESCR-estdc ?=	${PORTSDIR}/bitrig/bitrig-gcc/pkg/DESCR-estdc

HOMEPAGE?=	http://gcc.gnu.org/

#DIST_SUBDIR=gcc
CONFIG=${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS+=CONFIG V
