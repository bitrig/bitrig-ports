# $OpenBSD: Makefile,v 1.10 2016/03/11 20:28:29 naddy Exp $

COMMENT =		RTP (RFC3550) library
DISTNAME =		ortp-0.24.2
REVISION =		1

SHARED_LIBS +=	ortp                 2.0      # 9.0

CATEGORIES =		net multimedia
HOMEPAGE =		http://www.linphone.org/eng/documentation/dev/ortp.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto m pthread ssl

MASTER_SITES =		http://download.savannah.nongnu.org/releases/linphone/ortp/sources/

BUILD_DEPENDS =		devel/doxygen

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-ssl-hmac

# OpenBSD does not support AI_V4MAPPED/AI_ALL
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -DAI_V4MAPPED=0 -DAI_ALL"

post-install:
	rm -Rf ${PREFIX}/share/doc/ortp
	mv ${PREFIX}/share/doc/${DISTNAME} ${PREFIX}/share/doc/ortp

.include <bsd.port.mk>
