# $OpenBSD: Makefile,v 1.46 2016/03/09 15:54:58 jasper Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.17.1

CATEGORIES=	sysutils

HOMEPAGE=	http://www.mmonit.com/monit/

# AGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m kvm pthread ssl

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/monit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
