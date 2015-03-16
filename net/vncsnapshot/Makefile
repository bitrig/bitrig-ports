# $OpenBSD: Makefile,v 1.5 2015/03/16 08:53:42 sthen Exp $

COMMENT=		connect to VNC server and save screen images

V=			1.2a
PORTROACH=		ignore
DISTNAME=		vncsnapshot-$V-src
PKGNAME=		vncsnapshot-$V
REVISION=		1

CATEGORIES=		net

HOMEPAGE=		http://vncsnapshot.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		graphics/jpeg

WANTLIB += c m z jpeg
WANTLIB += c++ c++abi pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vncsnapshot/}

MAKE_FLAGS=	CC="${CC}"	CXX="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vncsnapshot ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vncsnapshot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vncsnapshot

WRKDIST=		${WRKDIR}/vncsnapshot-$V

NO_TEST=		Yes

.include <bsd.port.mk>
