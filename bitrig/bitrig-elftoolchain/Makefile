COMMENT=	 BSD licensed compilation tools

V=		0.6.1
PKGNAME=	bitrig-elftoolchain-${V}
DISTNAME=	elftoolchain-${V}
#EXTRACT_SUFX=	.tgz
CATEGORIES=	bitrig
REVISION =	0
LIB_DEPENDS=	archivers/libarchive

HOMEPAGE=	http://sourceforge.net/apps/trac/elftoolchain/
MAINTAINER =	Marco Peereboom <marco@bitrig.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

#MASTER_SITES = https://www.bitrig.org/pub/distfiles/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=elftoolchain/}
EXTRACT_SUFX=	.tgz


pre-configure:
	@cp ${FILESDIR}/Makefile.inc ${WRKSRC}/
	@cp ${FILESDIR}/libdwarf_shlib_version ${WRKSRC}/libdwarf/shlib_version
	@cp ${FILESDIR}/libelf_shlib_version ${WRKSRC}/libelf/shlib_version 

SHARED_LIBS +=  dwarf                     3.0
SHARED_LIBS +=  _elf                      1.0

.include <bsd.port.mk>
