# $OpenBSD: Makefile,v 1.13 2016/03/16 16:46:33 naddy Exp $

COMMENT=	ICB protocol plugin for Pidgin

DISTNAME=	pidgin-icb-20070505
REVISION=	6
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-icb/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	net/pidgin,-libpurple>=2.0.0

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/icb-plugin.txt

.include <bsd.port.mk>
