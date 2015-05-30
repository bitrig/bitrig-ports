# $OpenBSD: Makefile,v 1.21 2015/05/30 19:03:34 jasper Exp $

PKG_ARCH =	*

COMMENT =	little language that compiles to JavasSript

NPM_VERSION =	1.9.3
NPM_NAME =	coffee-script
PKGNAME =	coffeescript-${NPM_VERSION}
CATEGORIES =	lang

HOMEPAGE =	http://coffeescript.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

# XXX: These two lines can be removed when we update tar(1).
BUILD_DEPENDS =                archivers/gtar
TAR =                  ${LOCALBASE}/bin/gtar

CONFIGURE_STYLE =	npm

NO_TEST =		Yes

.include <bsd.port.mk>
