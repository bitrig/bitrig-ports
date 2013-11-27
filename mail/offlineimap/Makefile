# $OpenBSD: Makefile,v 1.26 2013/03/11 11:23:52 espie Exp $

COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_EGG_VERSION= 6.5.5
DISTNAME=	offlineimap-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://offlineimap.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/OfflineIMAP/offlineimap/tarball/v${MODPY_EGG_VERSION}/

NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	textproc/py-docutils

WRKDIST=	${WRKDIR}/OfflineIMAP-offlineimap-8bc2f35

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	@cd ${WRKSRC}/docs && ${LOCALBASE}/bin/rst2man MANUAL.rst ${WRKBUILD}/offlineimap.1

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
