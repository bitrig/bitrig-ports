# $OpenBSD: Makefile,v 1.8 2013/10/11 23:49:57 naddy Exp $

BROKEN=		needs work on bitrig

COMMENT=	fast maildir search engine

DISTNAME=	nmzmail-1.1
REVISION =	4

CATEGORIES=	mail textproc
HOMEPAGE=	http://www.ecademix.com/JohannesHofmann/nmzmail.html

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c readline termcap

MASTER_SITES=	${HOMEPAGE:nmzmail.html=}

BUILD_DEPENDS=	textproc/namazu
RUN_DEPENDS=	textproc/namazu
LIB_DEPENDS=	devel/readline

AUTOCONF_VERSION=2.63
CONFIGURE_STYLE=autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nmzmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nmzmail/

.include <bsd.port.mk>
