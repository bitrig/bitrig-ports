# $OpenBSD: Makefile,v 1.20 2016/03/11 19:59:11 naddy Exp $

COMMENT=	astronomical julian date calculator

DISTNAME=	jday-2.4
REVISION=	4
SHARED_LIBS +=  jday                 0.0      # .2.4
CATEGORIES=	astro
HOMEPAGE=	http://jday.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jday/}

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
