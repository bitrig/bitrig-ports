# $OpenBSD: Makefile,v 1.9 2014/12/02 19:54:15 jasper Exp $

COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.4.1
PKGNAME =		${DISTNAME:S/ruby-//}
REVISION =		0
CATEGORIES =		sysutils

# PD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS = 	sysutils/e2fsprogs

WANTLIB =		pthread

CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
