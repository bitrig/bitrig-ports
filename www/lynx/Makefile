COMMENT=		Lynx web browser from OpenBSD base

DISTNAME=		lynx-2.8.7rel.2
EXTRACT_SUFX=		.tgz
CATEGORIES=		www

HOMEPAGE=		https://www.bitrig.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c crypto ncurses ssl

MASTER_SITES=	https://www.bitrig.org/pub/distfiles/

NO_TEST=	Yes

MAKE_FILE=	Makefile.bsd-wrapper
MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}" PREFIX="${LOCALBASE}" \
		MANDIR="${LOCALBASE}/man/man"

pre-install:
	mkdir -p ${PREFIX}/share/doc/lynx/lynx_help/ \
		${PREFIX}/share/doc/lynx/lynx_help/keystrokes/ \
		${PREFIX}/share/examples/lynx/

post-install:
	${INSTALL_DATA} ${WRKSRC}/lynx.cfg ${PREFIX}/share/examples/lynx/

.include <bsd.port.mk>
