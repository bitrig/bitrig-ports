# $OpenBSD: Makefile,v 1.25 2016/03/23 06:50:43 ajacoutot Exp $

COMMENT=		hardware identification and configuration data

DISTNAME=		hwdata-0.287
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		misc

HOMEPAGE=		http://git.fedorahosted.org/git/hwdata.git

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://fedorahosted.org/releases/h/w/hwdata/

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

# grep ^FILES ${WRKSRC}/Makefile
FILES=			pci.ids usb.ids oui.txt iab.txt pnp.ids
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hwdata
.for i in ${FILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/hwdata
.endfor

.include <bsd.port.mk>
