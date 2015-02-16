# $OpenBSD: Makefile,v 1.14 2015/02/16 22:57:12 naddy Exp $

COMMENT=		program that manages encrypted password databases
DISTNAME=		pwsafe-0.2.0
REVISION=		6
CATEGORIES=		security

HOMEPAGE=		http://nsd.dyndns.org/pwsafe/

#GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m ncurses crypto c readline curses
WANTLIB +=		c++ c++abi pthread
LIB_DEPENDS=		devel/readline

MASTER_SITES=		${HOMEPAGE}releases/

CONFIGURE_STYLE=        gnu
USE_GMAKE=		Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
WANTLIB+=		Xmu X11 SM ICE
.endif

NO_TEST=		Yes

.include <bsd.port.mk>
