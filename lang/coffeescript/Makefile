# $OpenBSD: Makefile,v 1.22 2015/09/07 10:46:53 jasper Exp $

PKG_ARCH =	*

COMMENT =	little language that compiles to JavasSript

NPM_VERSION =	1.10.0
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
