# $OpenBSD: Makefile,v 1.22 2014/07/12 14:42:37 pascal Exp $

SHARED_ONLY=	Yes

COMMENT=	advanced IRC bouncer

DISTNAME=	znc-1.4
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://znc.in/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv
WANTLIB=	c crypto m pthread ssl z
WANTLIB +=	c++ c++abi

MAKE_FLAGS=	VERBOSE=1

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-optimization
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_GNUMAKE=gmake

NO_TEST=	Yes

.include <bsd.port.mk>
