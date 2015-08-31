# $OpenBSD: Makefile,v 1.107 2015/08/31 07:50:59 benoit Exp $

COMMENT=	shell-like command line ftp and sftp client

DISTNAME=	lftp-4.6.4
CATEGORIES=	net

REVISION=	3

HOMEPAGE=	http://lftp.yar.ru/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto curses expat idn m readline ssl util z
WANTLIB +=	c++ c++abi pthread

USE_GROFF=	Yes

# lftp needs add_history_time()
LIB_DEPENDS=	devel/libidn \
		devel/readline>=6.1p2 \

MASTER_SITES=	http://lftp.yar.ru/ftp/

LIBTOOL_FLAGS=	--tag=disable-shared
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-openssl \
		--without-gnutls \
		--disable-shared

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/lftp

post-install:
	rm -f ${PREFIX}/lib/liblftp-{jobs,tasks}.{a,la}

.include <bsd.port.mk>
