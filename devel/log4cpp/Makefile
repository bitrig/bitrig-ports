# $OpenBSD: Makefile,v 1.3 2016/03/11 20:28:24 naddy Exp $

COMMENT=	library of C++ classes for flexible logging

DISTNAME=	log4cpp-1.1.1
REVISION=	0
WRKDIST=	${WRKDIR}/log4cpp

SHARED_LIBS +=	log4cpp              0.0      # 5.6

CATEGORIES=	devel

HOMEPAGE=	http://log4cpp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=log4cpp/}

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --with-pthreads \
		--disable-doxygen
SEPARATE_BUILD=	Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

.include <bsd.port.mk>
