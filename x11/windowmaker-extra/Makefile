# $OpenBSD: Makefile,v 1.20 2015/12/07 18:24:11 jasper Exp $

COMMENT=		themes and icons for Window Maker

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}
REVISION=		4
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}

RUN_DEPENDS=		x11/windowmaker

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
