# $OpenBSD: Makefile,v 1.7 2016/01/14 15:50:43 jsing Exp $

COMMENT =		golang websocket package

VERSION =		0.1
REVISION =		0
DISTNAME =		go-websocket-${VERSION}
GH_COMMIT =		446d52dd4018303a13b36097e26d0888aca5d6ef
GH_ACCOUNT =		golang
GH_PROJECT =		net

CATEGORIES =		net www

HOMEPAGE =		http://golang.org/x/net/websocket/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

GO_PKG =		pkg/openbsd_${MACHINE_ARCH:S/i386/386/}
MODGO_TYPE =		lib
MODGO_SUBDIR =		${WRKDIST}/websocket
ALL_TARGET =		golang.org/x/net/websocket

.include <bsd.port.mk>
