# $OpenBSD: Makefile,v 1.97 2014/04/24 16:29:03 benoit Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME =	lftp-4.4.15
CATEGORIES=	net

REVISION=	2

HOMEPAGE=	http://lftp.yar.ru/

# GPLv3+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c crypto curses expat m readline ssl util z
WANTLIB +=	c++ c++abi pthread

# lftp needs add_history_time()
LIB_DEPENDS=	devel/readline

MASTER_SITES=	http://lftp.yar.ru/ftp/

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls \
		--disable-shared
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

.include <bsd.port.mk>
