# $OpenBSD: Makefile,v 1.17 2016/03/05 16:04:08 pascal Exp $

COMMENT=	educational application to solve physics problems

VERSION =	0.3.5
REVISION =	1
DISTNAME =	fisicalab-${VERSION}-1
PKGNAME =	fisicalab-${VERSION}.1

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_GNU:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB =	gsl gslcblas
LIB_DEPENDS=	devel/gsl

CONFIGURE_STYLE =	gnu

WRKSRC =	${WRKDIR}/fisicalab-${VERSION}

pre-configure:
	cd ${WRKBUILD} && \
		find . -name COPYING.txt~ -exec rm {} \;

.include <bsd.port.mk>
