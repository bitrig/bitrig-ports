# $OpenBSD: Makefile,v 1.11 2015/08/11 20:13:39 jasper Exp $

COMMENT=		audio CD to audio file encoder
DISTNAME=		vlorb-1.2
REVISION=		1
CATEGORIES=		audio

HOMEPAGE=		http://jk.yazzy.org/projects/vlorb/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

RUN_DEPENDS=		audio/cdparanoia \
			audio/flac \
			audio/vorbis-tools>=1.4.0 \
			audio/vorbisgain \
			audio/p5-cddb

NO_BUILD=		Yes
NO_TEST =		Yes
PKG_ARCH=		*

pre-install:
	@sed -i 's,/etc/vlorbrc,${SYSCONFDIR}/vlorbrc,g' \
		${WRKSRC}/vlorb ${WRKSRC}/vlorb.1

.include <bsd.port.mk>
