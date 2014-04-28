# $OpenBSD: Makefile,v 1.18 2013/03/21 08:45:17 ajacoutot Exp $

COMMENT=		Free Unix Spectrum Emulator utilities

DISTNAME=		fuse-utils-0.10.0.1
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/
REVISION =		0

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB=		c m z gcrypt bz2 glib-2.0 gpg-error pcre \
			audiofile
WANTLIB +=		c++ c++abi pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/libspectrum
WANTLIB +=		spectrum>=5

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
