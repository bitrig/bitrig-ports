# $OpenBSD: Makefile,v 1.11 2015/01/21 06:13:49 bentley Exp $

BROKEN=		needs work on bitrig

COMMENT=	Java program analyzer and checker

DISTNAME=	jlint-3.0
REVISION=	1
CATEGORIES=	java
REVISION =	0

HOMEPAGE=	http://artho.com/jlint/

# GPLv2+
PERMIT_PACKAGE_CDROM=  Yes
WANTLIB=		c z m
WANTLIB +=		c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jlint/}

MAKE_ENV+=	CC="${CC}" CPP="${CXX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_DATA="${INSTALL_DATA}"

NO_TEST=	Yes

.include <bsd.port.mk> 
