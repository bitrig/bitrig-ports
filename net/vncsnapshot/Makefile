# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:58 espie Exp $

COMMENT=		connect to VNC server and save screen images

V=			1.2a
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

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vncsnapshot ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vncsnapshot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vncsnapshot

WRKDIST=		${WRKDIR}/vncsnapshot-$V

NO_TEST=		Yes

.include <bsd.port.mk>
