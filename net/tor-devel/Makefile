# $OpenBSD: Makefile,v 1.59 2012/08/13 16:39:35 pascal Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.2.3.24-rc
CATEGORIES=	net
HOMEPAGE=	http://www.torproject.org/

MAINTAINER=	David Hill <dhill@mindcry.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto event_core event_extra m pthread ssl z

MASTER_SITES=	${HOMEPAGE}dist/

LIB_DEPENDS=	devel/libevent2

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
CONFIGURE_ENV=	CC=${CC} \
		CFLAGS="${CFLAGS} -g"

CONFIGURE_ARGS=	--with-libevent-dir=${LOCALBASE} \
		--with-ssl-dir=/usr

DB_DIR=		/var/tor
SUBST_VARS+=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
