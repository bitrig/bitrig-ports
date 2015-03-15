#       $OpenBSD: Makefile,v 1.14 2015/03/15 10:07:43 jasper Exp $

BROKEN=fake install installs into base

COMMENT=	newLISP is a LISP like, general purpose scripting language

V=		10.6.2
DISTNAME=	newlisp-$V
REVISION=	2
CATEGORIES=	lang
HOMEPAGE=	http://newlisp.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncurses readline
LIB_DEPENDS=		devel/readline

MASTER_SITES=		http://newlisp.org/downloads/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		devel/xdg-utils

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure-alt
CONFIGURE_ARGS +=	--enable-readline
MAKE_FLAGS=		CC="${CC}"

TEST_TARGET=		check

WRKBUILD=		${WRKSRC}
SUBST_VARS=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/guiserver/newlisp-edit.lsp

.include <bsd.port.mk>
