# $OpenBSD: Makefile,v 1.32 2016/03/18 23:12:16 naddy Exp $

COMMENT=		IntelliJ IDEA Java IDE

V=			15.0.4
DISTNAME=		ideaIC-${V}
PKGNAME=		intellij-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.jetbrains.com/idea/
MAINTAINER=		Vadim Zhukov <zhuk@openbsd.org>

# Apache v2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.jetbrains.com/idea/

MODULES=		java
MODJAVA_VER=		1.7

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils

NO_TEST=		Yes

SUBST_VARS+=		JAVA_HOME

WRKDIST=		${WRKDIR}/idea-IC-143.2287.1
IJ=			${PREFIX}/intellij

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${IJ}
	@tar -czf - -C ${WRKDIST} . | tar xzf - -C ${IJ}
	@${SUBST_PROGRAM} ${FILESDIR}/idea ${PREFIX}/bin/idea
	@chmod ${BINMODE} ${PREFIX}/bin/idea
	@ln -s ${TRUEPREFIX}/bin/idea ${PREFIX}/bin/intellij
	${INSTALL_MAN} ${FILESDIR}/idea.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	cd ${WRKDIST}/lib && ${JAVA_HOME}/bin/jar xf icons.jar
	${INSTALL_DATA} ${WRKDIST}/lib/icon.png ${IJ}/idea.png
	@${SUBST_DATA} ${FILESDIR}/intellij.desktop \
		${PREFIX}/share/applications/intellij.desktop

.include <bsd.port.mk>
