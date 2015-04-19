
COMMENT =		yet another NBD (Network Block Device) server program

DISTNAME =		xnbd-0.3.0
CATEGORIES =		sysutils

SHARED_LIBS +=		xnbd_internal 0.0

HOMEPAGE =		https://bitbucket.org/hirofuchi/xnbd/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		textproc/asciidoc devel/glib2
WANTLIB =		c

EXTRACT_SUFX =		.tar.bz2
MASTER_SITES =		https://bitbucket.org/hirofuchi/xnbd/downloads/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
