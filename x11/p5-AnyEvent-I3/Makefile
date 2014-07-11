# $OpenBSD: Makefile,v 1.1.1.2 2014/07/11 10:53:05 dcoppa Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.15

CATEGORIES =		x11 devel

MODULES =		cpan

CPAN_AUTHOR =		MSTPLBG

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			converters/p5-JSON-XS

.include <bsd.port.mk>
