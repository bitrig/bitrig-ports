# $OpenBSD: Makefile,v 1.4 2015/12/03 21:24:32 sthen Exp $

BROKEN=		needs work on bitrig

COMMENT=	lightweight XSETTINGS daemon

DISTNAME=	derat-xsettingsd-486be8b
PKGNAME=	xsettingsd-0.20120312
REVISION=	2

CATEGORIES=	x11

HOMEPAGE=	https://code.google.com/p/xsettingsd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp c m pthread-stubs xcb
WANTLIB += c++ c++abi pthread

MASTER_SITES=	https://spacehopper.org/mirrors/

MODULES=	devel/scons

MAKE_ENV=	${MODSCONS_ENV} CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

# there are gtest-based tests, but fiddly to get working with SCons
NO_TEST=	Yes

do-install:
	cd ${WRKSRC}; \
	    ${INSTALL_MAN} xsettingsd.1 ${PREFIX}/man/man1/; \
	    ${INSTALL_PROGRAM} xsettingsd dump_xsettings ${PREFIX}/bin

.include <bsd.port.mk>
