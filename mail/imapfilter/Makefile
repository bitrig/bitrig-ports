# $OpenBSD: Makefile,v 1.14 2015/02/16 22:57:09 naddy Exp $

COMMENT=	remote IMAP filtering utility

V=		2.5.6
DISTNAME=	imapfilter-${V}
REVISION=	0
DISTFILES=	v${V}.tar.gz
CATEGORIES=	mail

HOMEPAGE=	https://github.com/lefcha/imapfilter

MASTER_SITES=	https://github.com/lefcha/imapfilter/archive/

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ssl pcre ${MODLUA_WANTLIB}

MODULES=	lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS=	devel/pcre \
		${MODLUA_LIB_DEPENDS}

MAKE_ENV+=	CC="${CC}"

NO_TEST=	Yes

SUBST_VARS+=	MODLUA_INCL_DIR MODLUA_LIB
pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imapfilter
	${INSTALL_DATA} ${WRKSRC}/samples/{config,extend}.lua \
		${PREFIX}/share/examples/imapfilter/

.include <bsd.port.mk>
