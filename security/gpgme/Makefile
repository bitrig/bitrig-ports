# $OpenBSD: Makefile,v 1.34 2016/03/11 19:59:16 naddy Exp $

COMMENT=		GnuPG Made Easy

DISTNAME=		gpgme-1.5.1
REVISION=		1
CATEGORIES=		security devel

SHARED_LIBS +=  gpgme                19.0     # 24.0
SHARED_LIBS +=  gpgme-pthread        19.0     # 24.0

HOMEPAGE=		http://www.gnupg.org/gpgme.html

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan gpg-error pthread

MASTER_SITES=		${MASTER_SITES_GNUPG:=gpgme/}
EXTRACT_SUFX=		.tar.bz2

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/build-aux/

CONFIGURE_STYLE=	gnu

MODULES=		devel/gettext
# Requires gpgsm (gnupg 2.x) during build, but can run with any gnupg.
BUILD_DEPENDS=		gnupg->=2:security/gnupg2
# gnupg-* is normally the default anyway, but gnupg1 overrides PKGSPEC
# so we must be explicit here.
RUN_DEPENDS=		gnupg-*:security/gnupg
LIB_DEPENDS=		security/libgpg-error>=1.4 \
			security/libassuan

# needed for the regression tests
USE_GMAKE=		Yes


.include <bsd.port.mk>
