# $OpenBSD: Makefile,v 1.11 2013/09/05 06:21:53 landry Exp $

COMMENT=	Small Device C Compiler
BROKEN-sparc64=	illegal operands building SDCCval.c
BROKEN-alpha=	sdcc segfaults when building the device library

DISTNAME=	sdcc-src-2.8.0
PKGNAME=	${DISTNAME:S/-src//}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	devel
REVISION=	3

HOMEPAGE=	http://sdcc.sourceforge.net/

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/sim/ucsim

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m c++ c++abi readline termcap

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdcc/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/gputils
LIB_DEPENDS=		devel/readline

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	docdir=${PREFIX}/share/doc/sdcc
CONFIGURE_ENV+=		sdcc_cv_CCggdb="no"

USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/sdcc

.include <bsd.port.mk>
