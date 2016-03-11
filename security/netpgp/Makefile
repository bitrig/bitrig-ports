# $OpenBSD: Makefile,v 1.6 2016/03/11 19:59:16 naddy Exp $

COMMENT =		BSD-licensed PGP implementation

DISTNAME =		netpgp-20140220
REVISION =		0

SHARED_LIBS +=		mj                        1.0 # 0.0
SHARED_LIBS +=		netpgp                    1.0 # 0.0

CATEGORIES =		security

HOMEPAGE =		http://www.netpgp.com

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		bz2 c crypto z

MASTER_SITES =		http://ftp.netbsd.org/pub/pkgsrc/distfiles/LOCAL_PORTS/ \
			ftp://ftp.netbsd.org/pub/pkgsrc/distfiles/LOCAL_PORTS/

LIB_DEPENDS =		archivers/bzip2
TEST_DEPENDS =	devel/autoconf/2.68

TEST_FLAGS =		AUTOCONF_VERSION=2.68

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -DOPENSSL_NO_IDEA" \
			LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/buildaux

.include <bsd.port.mk>
