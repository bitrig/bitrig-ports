# $OpenBSD: Makefile,v 1.13 2013/03/11 11:23:51 espie Exp $

COMMENT=	remote IMAP filtering utility

V=		2.5.6
DISTNAME=	imapfilter-${V}
DISTFILES=	v${V}.tar.gz
CATEGORIES=	mail

HOMEPAGE=	https://github.com/lefcha/imapfilter

MASTER_SITES=	https://github.com/lefcha/imapfilter/archive/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ssl pcre ${MODLUA_WANTLIB}

MODULES=	lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS=	devel/pcre \
		${MODLUA_LIB_DEPENDS}

MAKE_ENV+=	CC="${CC}"
USE_GROFF =	Yes

NO_TEST=	Yes

SUBST_VARS+=	MODLUA_INCL_DIR MODLUA_LIB
pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapfilter
	${INSTALL_DATA} ${WRKSRC}/samples/{config,extend}.lua \
		${PREFIX}/share/examples/imapfilter/

.include <bsd.port.mk>
