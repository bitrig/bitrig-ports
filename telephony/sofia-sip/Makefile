COMMENT=	Nokia sofia-sip library

DISTNAME=	sofia-sip-1.12.11
#REVISION=	0

SHARED_LIBS +=	libsofia-sip-ua-glib 0.0      # 3.0
SHARED_LIBS +=	libsofia-sip-ua      0.0      # 6.0

CATEGORIES=	telephony devel

HOMEPAGE=	http://sofia-sip.sourceforge.net/development.html

MAINTAINER=	Marco Peereboom <marco@bitrig.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sofia-sip/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
