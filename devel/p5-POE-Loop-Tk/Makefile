# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:31 naddy Exp $

COMMENT=		bridge that allows POE to be driven by Tk

DISTNAME=		POE-Loop-Tk-1.302
REVISION=		2
CATEGORIES=		devel

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS+=	--default

BUILD_DEPENDS=		devel/p5-POE-Test-Loops
RUN_DEPENDS+=		x11/p5-Tk \
			devel/p5-POE>=1.006

TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
