# $OpenBSD: Makefile,v 1.23 2013/10/11 23:51:04 naddy Exp $

BROKEN= 	needs work on bitrig

DISTNAME=       xps-4.2
REVISION=	8
CATEGORIES=     sysutils x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=motif-pstree/}

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		ICE SM X11 Xext Xmu Xt c kvm m Xm

COMMENT=	graphically display and dynamically update the process tree

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--x-includes=${LOCALBASE}/include \
			--with-motif-libs=${LOCALBASE}/lib
CONFIGURE_ENV=		LDFLAGS=-lm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

LIB_DEPENDS+=		x11/openmotif

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/xps ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/doc/xps.1 ${PREFIX}/man/man1/xps.1
	${INSTALL_DATA} ${WRKBUILD}/src/Xps \
		${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
