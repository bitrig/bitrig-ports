# $OpenBSD: Makefile,v 1.15 2014/08/30 21:54:08 jasper Exp $

COMMENT=	Berkeley's implementation of the logo programming language
DISTNAME=	ucblogo-6.0
CATEGORIES=	lang

MASTER_SITES=	http://www.cs.berkeley.edu/~bh/downloads/
HOMEPAGE=	http://www.cs.berkeley.edu/~bh/logo.html
DISTFILES=	ucblogo.tar.gz

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 c m pthread-stubs termcap xcb
NO_TEST=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	logo makehelp helpfiles helpfiles/HELPCONTENTS

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib
# just give up on warnings for ucblogo.
CONFIGURE_ENV=CFLAGS="-w -Wno-return-type"

pre-configure:
	@perl -pi -e 's:\@logopath@:${LOCALBASE}/share/ucblogo:g;' \
		${WRKSRC}/init.c
	@perl -pi -e 's:\@logohelp@:${LOCALBASE}/share/ucblogo/helpfiles:g;' \
		${WRKSRC}/init.c
	@rm -f ${WRKSRC}/config.cache

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ucblogo/helpfiles
	${INSTALL_DATA} ${WRKSRC}/helpfiles/* ${PREFIX}/share/ucblogo/helpfiles
	${INSTALL_DATA} ${WRKSRC}/Messages ${PREFIX}/share/ucblogo/messages
	${INSTALL_PROGRAM} ${WRKSRC}/logo ${PREFIX}/bin

.include <bsd.port.mk>
