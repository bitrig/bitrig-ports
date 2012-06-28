# $OpenBSD: Makefile,v 1.32 2011/05/23 13:42:10 gsoares Exp $

COMMENT=	 BSD licensed compilation tools

V=2521
PKGNAME=	bitrig-elftoolchain-${V}
DISTNAME=	elftoolchain-${V}
#EXTRACT_SUFX=	.tgz
CATEGORIES=	bitrig
#REVISION =	0

HOMEPAGE=	http://sourceforge.net/apps/trac/elftoolchain/
MAINTAINER =	Marco Peereboom <marco@bitrig.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES = https://www.bitrig.org/pub/distfiles/

pre-configure:
	@cp ${FILESDIR}/Makefile.inc ${WRKSRC}/
	@cp ${FILESDIR}/libdwarf_shlib_version ${WRKSRC}/libdwarf/shlib_version 
	@cp ${FILESDIR}/libelf_shlib_version ${WRKSRC}/libelf/shlib_version 

SHARED_LIBS +=  dwarf                     3.0
SHARED_LIBS +=  _elf                      1.0

.include <bsd.port.mk>
