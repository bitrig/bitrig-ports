# $OpenBSD: Makefile,v 1.11 2016/02/25 03:43:30 ajacoutot Exp $

PKG_PARCH=		*

COMMENT=		common build utilities for GNOME C++ binding libraries

GNOME_PROJECT=		mm-common
GNOME_VERSION=		0.9.10

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_prog_CURL="${LOCALBASE}/bin/curl" \
			ac_cv_prog_WGET="${LOCALBASE}/bin/wget"

.include <bsd.port.mk>
