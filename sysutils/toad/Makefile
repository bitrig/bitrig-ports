# $OpenBSD: Makefile,v 1.17 2016/02/25 13:01:04 ajacoutot Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)

GH_ACCOUNT=		ajacoutot
GH_PROJECT=		toad
GH_TAGNAME=		1.6

CATEGORIES=		sysutils

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util

RUN_DEPENDS=		net/p5-Net-DBus \
			sysutils/consolekit

MAKE_FLAGS=		PREFIX=${TRUEPREFIX} \
			MANDIR=${TRUEPREFIX}/man/man

NO_TEST=		Yes

.include <bsd.port.mk>
