# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:29 naddy Exp $

COMMENT =	mark overload code symbols as methods

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-MarkAsMethods-0.15
CATEGORIES =	devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Moose \
		devel/p5-namespace-autoclean>=0.12

.include <bsd.port.mk>
