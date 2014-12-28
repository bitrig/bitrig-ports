# $OpenBSD: Makefile,v 1.8 2014/12/28 13:38:56 jasper Exp $

PKG_ARCH=		*

COMMENT=		secure hosting of Git repositories

V=			3.6.2
REVISION=		0
GH_ACCOUNT=		sitaramc
GH_PROJECT=		gitolite
GH_TAGNAME=		v$V
GH_COMMIT=		b5649570420bc112f7c8dcaf1d3c0275de93b464
DISTNAME=		${GH_PROJECT}-$V
CATEGORIES=		sysutils devel

HOMEPAGE=		https://github.com/sitaramc/gitolite/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/sitaramc/gitolite/archive/
DISTFILES=		${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

RUN_DEPENDS=		devel/git

NO_BUILD=		Yes
NO_TEST=		Yes

SUBST_VARS+=		GH_TAGNAME
GL_DIR=			${PREFIX}/libexec/gitolite/

do-install:
	${SUBST_CMD} ${WRKSRC}/install
	${INSTALL_DATA_DIR} ${GL_DIR}
	perl ${WRKSRC}/install -to ${GL_DIR}
	cd ${PREFIX}/bin/ && ln -s ../libexec/gitolite/gitolite

.include <bsd.port.mk>
