# $OpenBSD: Makefile,v 1.11 2015/11/02 11:56:54 espie Exp $

COMMENT =	brick shooter reflexion game

V=		1.5.3
DISTNAME=	JBrickShooter_v${V}
PKGNAME=	jbrickshooter-${V}
REVISION=	3
CATEGORIES=	games

EXTRACT_SUFX=	.zip

HOMEPAGE=	https://code.google.com/p/jbrickshooter/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://jbrickshooter.googlecode.com/files/

MODULES=	java
# hardcode version because we can't get JAVA_HOME as NO_BUILD is set
MODJAVA_VER=	1.7
MODJAVA_JRERUN= Yes

RUN_DEPENDS=	java/javaPathHelper

NO_TEST=	Yes
NO_BUILD=	Yes

WRKDIST=	${WRKDIR}
PKG_ARCH=	*

do-install:
	${SUBST_CMD} -m 555 -c ${FILESDIR}/jbrickshooter \
		${WRKSRC}/jbrickshooter
	${INSTALL_DATA_DIR} ${PREFIX}/share/jbrickshooter
	cp ${WRKSRC}/jbrickshooter.jar ${PREFIX}/share/jbrickshooter
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/jbrickshooter
	${INSTALL_SCRIPT} ${WRKSRC}/jbrickshooter ${PREFIX}/bin/jbrickshooter

.include <bsd.port.mk>
