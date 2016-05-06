# $OpenBSD: Makefile,v 1.7 2013/10/11 23:51:04 naddy Exp $

COMMENT=	a software fax modem that uses an IAX channel

DISTNAME=	iaxmodem-1.1.0
REVISION=	1
CATEGORIES=	telephony
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iaxmodem/}

HOMEPAGE=	http://iaxmodem.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c m tiff util

LIB_DEPENDS=	graphics/tiff

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/lib/libiax2 ${WRKSRC}/lib/spandsp/config

CFLAGS+=	-I${LOCALBASE}/include

MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iaxmodem
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/iaxmodem
	${INSTALL_PROGRAM} ${WRKSRC}/iaxmodem ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/iaxmodem-cfg.ttyIAX \
	    ${PREFIX}/share/examples/iaxmodem/iaxmodem-cfg.ttyIAX
	${INSTALL_DATA} ${WRKSRC}/config.ttyIAX \
	    ${PREFIX}/share/examples/iaxmodem/hylafax-cfg.ttyIAX
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/iaxmodem
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/iaxmodem
	${INSTALL_DATA} ${WRKSRC}/iaxmodem.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
