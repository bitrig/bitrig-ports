# $OpenBSD: Makefile,v 1.26 2016/03/18 23:57:57 tim Exp $

COMMENT=		console jabber client
DISTNAME=		mcabber-1.0.2
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://mcabber.com/

# GPLv2+ with SSL exemption
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB=		c crypto gcrypt gpg-error ncursesw panelw pcre pthread \
			ssl glib-2.0 gmodule-2.0 gpgme loudmouth-1>=3 \
			idn otr assuan ffi gobject-2.0

LIB_DEPENDS=		devel/glib2 \
			security/gpgme \
			net/loudmouth \
			devel/libidn \
			security/libotr
RUN_DEPENDS=		devel/desktop-file-utils

USE_GMAKE =		Yes
USE_GROFF =		Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--enable-gpgme \
			--disable-aspell \
			--disable-enchant \
			--enable-otr \
			--enable-sigwinch \
			--with-libotr-prefix=${LOCALBASE}/lib \
			--with-libotr-inc-prefix=${LOCALBASE}/include

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/mcabber.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mcabber
	${INSTALL_DATA} ${WRKSRC}/mcabberrc.example \
		${PREFIX}/share/examples/mcabber

.include <bsd.port.mk>
