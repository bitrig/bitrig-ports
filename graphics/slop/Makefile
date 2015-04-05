# $OpenBSD: Makefile,v 1.6 2015/04/05 13:31:14 sthen Exp $

V =		4.1.15
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11
REVISION =	0

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}

HOMEPAGE =	https://github.com/naelstrof/slop

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext c m
WANTLIB += c++ c++abi

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
