# $OpenBSD: Makefile,v 1.12 2015/06/05 08:11:53 bentley Exp $

COMMENT=		info viewer with lynx-style navigation

DISTNAME=		pinfo-0.6.9
CATEGORIES=		textproc devel

REVISION=		1

HOMEPAGE=		https://alioth.debian.org/frs/?group_id=30592

MASTER_SITES=		https://alioth.debian.org/frs/download.php/latestfile/434/ \
			http://distcache.freebsd.org/ports-distfiles/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses readline 
LIB_DEPENDS=		devel/readline

MODULES+=		devel/gettext

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/tools

MAKE_FLAGS+=	INTLLIBS='-L${LOCALBASE}/lib -lintl -liconv'

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pinfo
		${INSTALL_DATA} ${WRKSRC}/src/pinforc \
			${PREFIX}/share/examples/pinfo/

.include <bsd.port.mk>
