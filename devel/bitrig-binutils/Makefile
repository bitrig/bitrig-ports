COMMENT=		Bitrig binutils

DISTNAME=		bitrig-binutils-2.15
EXTRACT_SUFX=		.tgz
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		http://www.bitrig.org/
MAINTAINER=		Marco Peereboom <marco@bitrig.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c iberty readline

LIB_DEPENDS =	devel/bitrig-libiberty>=10.1 \
		devel/bitrig-libreadline>=3.0

MASTER_SITES=	http://www.bitrig.org/files/

NO_REGRESS=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=     LDFLAGS="-L${LOCALBASE}/lib" \
		SYSCONFDIR="${SYSCONFDIR}"

.include <bsd.port.mk>
