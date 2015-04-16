# $OpenBSD: Makefile,v 1.20 2015/04/16 08:31:46 jasper Exp $

PKG_ARCH =	*

COMMENT =	little language that compiles to JavasSript

NPM_VERSION =	1.9.2
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
